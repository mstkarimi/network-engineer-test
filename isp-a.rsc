/ip address add interface=ether1 address=172.16.1.1/24
/routing bgp instance set default as=30
/routing bgp peer add name=wan1 remote-address=192.168.1.1 remote-as=10
/interface bridge add name=loopback protocol-mode=none
/ip address add address=10.0.0.1/32 interface=loopback
/mpls ldp set enabled=yes transport-address=10.0.0.1
/mpls ldp interface add interface=ether1

