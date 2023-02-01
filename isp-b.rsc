/ip address add interface=ether1 address=172.16.2.1/16
/routing bgp instance set default as=30
/routing bgp peer add name=wan1 remote-address=192.168.2.1 remote-as=10
/interface bridge add name=loopback protocol-mode=none
/ip address add address=10.0.0.4/32 interface=loopback
/mpls ldp set enabled=yes transport-address=10.0.0.4
/mpls ldp interface add interface=ether1

