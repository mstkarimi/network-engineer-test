/ip address add interface=ether1 address=172.16.1.101/24
/interface bridge add name=loopback protocol-mode=none

/interface vlan add interface=ether2 vlan-id=1001 name=1001
/interface vrrp add interface=vlan1001 vrid=49 priority=254
/ip address add address=10.10.1.2/32 interface=vrrp1

/interface vlan add interface=ether2 vlan-id=1002 name=1002
/interface vrrp add interface=vlan1002 vrid=49 priority=254
/ip address add address=10.20.1.2/32 interface=vrrp2

/ip address add address=10.0.0.2/32 interface=loopback
/mpls ldp set enabled=yes transport-address=10.0.0.2
/mpls ldp interface add interface=ether1

/ip firewall nat add action=masquerade chain=srcnat
/ip route
add check-gateway=ping distance=1 gateway=172.16.1.1
add check-gateway=ping distance=2 gateway=172.16.2.1

