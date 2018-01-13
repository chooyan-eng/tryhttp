require 'test_helper'
require 'benchmark'

class PrinterTest < Minitest::Test
  def test_typing_outputs_as_is
    text = "sending data..."
    interval = 0.1
    assert_output(stdout = text) { Tryhttp::Printer.typing(text, interval) }
  end

  def test_typing_outputs_with_given_interval
    text = "sending data..."
    interval = 0.1

    result = Benchmark.realtime do
      assert_output(stdout = text) { Tryhttp::Printer.typing(text, interval) }
    end

    assert result > text.size * interval / 1000
  end

  def test_carriage_return
    skip("unable to test carriage return nicely")

    expected = "expected text"
    assert_output(stdout = expected) do
       print "this is a text"
       Tryhttp::Printer.cr()
       print expected
    end
  end
end
