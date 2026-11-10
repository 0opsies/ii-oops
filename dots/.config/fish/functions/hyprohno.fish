function hyprohno --wraps="hyprctl --instance  0 eval 'hl.clear_crashed_lockscreen()'" --description "alias hyprohno=hyprctl --instance  0 eval 'hl.clear_crashed_lockscreen()'"
    hyprctl --instance  0 eval 'hl.clear_crashed_lockscreen()' $argv
end
