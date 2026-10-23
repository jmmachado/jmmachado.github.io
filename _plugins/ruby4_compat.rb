# Liquid 4.0.3 (pinned by GitHub Pages) still calls Ruby's removed taint API.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
