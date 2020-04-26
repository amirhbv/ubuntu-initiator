begin
    set default_path "venv"

    function activate -a venv_path -d "Activates Python's venv for current directory"
        if test -z "$venv_path" || test "$venv_path" = "-v"
            set venv_path $default_path
        end

        if test -d "$venv_path"
            source (string join / $PWD $venv_path 'bin/activate.fish')

            if contains -- -v $argv
                echo -s (set_color green) "Python's venv for $PWD activated" (set_color normal)
            end
        else
            if contains -- -v $argv
                echo (set_color red) "There's no venv named $venv_path found in current directory" (set_color normal)
            end
        end
    end
end
