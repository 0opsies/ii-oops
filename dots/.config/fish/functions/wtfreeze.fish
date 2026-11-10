function wtfreeze --wraps='journalctl -b -n 100 --no-pager' --description 'alias wtfreeze=journalctl -b -n 100 --no-pager'
    journalctl -b -n 100 --no-pager $argv
end
