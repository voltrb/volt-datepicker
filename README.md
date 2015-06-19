# Volt::Datepicker

volt-datepicker provides a text field like in volt-fields that shows a datepicker below the fiend when clicked in.

## Usage

First include the gem in the projects Gemfile:

```gem 'volt-datepicker'```

Next add volt-datepicker to a componentes dependencies.rb file:

```component 'datepicker'```

Pass a value to bind the field to.

```html
<:datepicker value="{{ page._date }}" />
```

You can also pass a date-format attribute that will be passed to Time.strftime(..) when setting the date into the field.

```html
<:datepicker value="{{ page._date }}" date-format="%Y-%m-%d" />
```