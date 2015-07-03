module Datepicker
  class MainController < Fields::MainController
    def index_ready
      # When ready, attach the date picker
      root = first_element

      # Setup the datepicker
      field = nil

      `self.field = $(root).find('.form-control').get(0)`

      opts = nil
      `opts = {skipFieldUpdate: true};`

      `opts.field = self.field;`
      `opts.onSelect = function(date) {`
        date_changed(`date`)
      `};`
      if attrs.max_date
        `opts.maxDate = #{attrs.max_date};`
      end

      `self.picker = new Pikaday(opts);`
      @ready = false
      `self.picker.setDate(self.field.value);`

      @ready = true
    end

    def date_changed(date)
      return unless @ready
      unix = `date.getTime()/1000`

      time = Time.at(unix)

      attrs.value = time.strftime(attrs.date_format || '%m/%d/%Y')
    end

    def klass
      attrs.klass || 'form-control'
    end

    def before_index_remove
      if `self.picker`
        `self.picker.destroy()`
      end

      # remove reference to dom node
      @field = nil
    end
  end
end
