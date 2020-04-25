begin
    set server "<VPN server>"
    set servercert "<VPN servercert>"
    set username "<Your username>"
    set password "<Your password>"
    set proxy_port "11080"

    function vpn
        set cmd "echo $password | sudo openconnect \
                    $server \
                    --servercert $servercert \
                    --no-dtls \
                    -u $username \
                    --passwd-on-stdin"

        if contains -- -p $argv
            set cmd "$cmd --script-tun --script 'ocproxy -D $proxy_port'"
        end

        eval $cmd
    end
end
