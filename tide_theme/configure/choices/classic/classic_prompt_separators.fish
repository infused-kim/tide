function classic_prompt_separators
    _title 'Prompt Separators'

    _option 1 'Angled'
    set -g fake_tide_left_prompt_item_separator_same_color ''
    set -g fake_tide_right_prompt_item_separator_same_color ''
    _display_prompt

    _option 2 'Vertical'
    set -g fake_tide_left_prompt_item_separator_same_color '│'
    set -g fake_tide_right_prompt_item_separator_same_color '│'
    _display_prompt

    _option 3 'Slanted'
    set -g fake_tide_left_prompt_item_separator_same_color '╱'
    set -g fake_tide_right_prompt_item_separator_same_color '╱'
    _display_prompt

    _option 4 'Round'
    set -g fake_tide_left_prompt_item_separator_same_color ''
    set -g fake_tide_right_prompt_item_separator_same_color ''
    _display_prompt

    _display_restart_and_quit

    switch (_menu 'Choice' 1/2/3/r/q)
        case 1
            set -g fake_tide_time_format ''
            set -e fake_tide_right_prompt_items[-1]
            _next_choice 'classic/classic_prompt_color'
        case 2
            set -g fake_tide_time_format '%T'
            _next_choice 'classic/classic_prompt_color'
        case 3
            set -g fake_tide_time_format '%r'
            _next_choice 'classic/classic_prompt_color'
        case r
            _begin
        case q
            _quit
    end
end