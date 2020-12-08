$Firewall = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewall]@{
    AllowActiveFTP = $null
    ApplicationRuleCollections = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallApplicationRuleCollection]@{
        Action = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallRCAction]@{ Type = 'type' }
        Id = '<id>'
        Name = '<name>'
        Priority = 50
        Rules = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallApplicationRule[]](
            @{
                Description = 'text'
                FqdnTags = $null # or [string[]]@('tag1','tag2')
                Name = '<name>'
                Protocols = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallApplicationRuleProtocol[]](
                    @{
                        Port = 443
                        ProtocolType = 'HTTPS'
                    }
                )
                SourceAddresses = [string[]]@('10.0.0.0/24')
                SourceIpGroups = $null # or [string[]]@('group1', 'group2')
                TargetFqdns = [string[]]@('sql-serv1.database.windows.net')
            }
        )
    }
    DNSEnableProxy = $null
    DNSServer = [string[]]@('server1', 'server2')
    FirewallPolicy = [Microsoft.Azure.Management.Network.Models.SubResource]@{ Id = '<id>' }
    HubIPAddresses = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallHubIpAddresses]@{
        publicIpAddresses = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallPublicIpAddress[]]@(
            @{
                Address = '127.0.0.1'
            }
        )
        PublicIPs = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallHubPublicIpAddresses]@{
            Addresses = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallPublicIpAddress[]]@(
                @{
                    Address = '127.0.0.1'
                },
                @{
                    Address = '192.168.0.1'
                }
            )
            Count = 2
        }
    }
    Id = '/subscriptions/<id>/resourceGroups/<id>/providers/Microsoft.Network/azureFirewalls/docs-vnet-fw'
    IpConfigurations = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallIpConfiguration[]](
        @{
            Name = '<name>'
            Id = '<id>'
            PrivateIPAddress = 'ip or guid?'
            PublicIpAddress = [Microsoft.Azure.Commands.Network.Models.PSResourceId]@{ Id = '<id>' }
            Subnet = [Microsoft.Azure.Commands.Network.Models.PSResourceId]@{ Id = '<id>' }
        }
    )
    Location = 'westeurope'
    ManagementIpConfiguration = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallIpConfiguration]@{
        Name = '<name>'
        Id = '<id>'
        PrivateIPAddress = 'ip or guid?'
        PublicIpAddress = [Microsoft.Azure.Commands.Network.Models.PSResourceId]@{ Id = '<id>' }
        Subnet = [Microsoft.Azure.Commands.Network.Models.PSResourceId]@{ Id = '<id>' }
    }
    Name = 'docs-vnet-fw'
    NatRuleCollections = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallNatRuleCollection[]](
        @{
            Id = '<id>'
            Name = '<name>'
            Priority = 50
            Rules = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallNatRule[]]@(
                @{
                    Name = '<name>'
                    Protocols = [string[]]@('HTTP','HTTPS')
                    SourceAddresses = [string[]]@('127.0.0.1','192.168.0.1')
                    SourceIpGroups = $null # or [string[]]@('group1', 'group2')
                    TranslatedAddress = 'address'
                    TranslatedFqdn = 'fqdn'
                    TranslatedPort = 'port'
                }
            )
        }
    )
    PrivateRange = [string[]]@('127.0.0.1'<#, 'range2'#>)
    ProvisioningState = $null
    ResourceGroupName = 'docs-fw-rg'
    ResourceGuid = '<guid>'
    Sku = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallSku]@{
        Name = 'Expensive'
        Tier = 'Best'
    }
    Tag = @{ <# tags here #> }
    ThreatIntelMode = 'mode'
    ThreatIntelWhitelist = [Microsoft.Azure.Commands.Network.Models.PSAzureFirewallThreatIntelWhitelist]@{
        FQDNs = [string[]]@('fqdn.domain', 'contoso.example')
        IpAddresses = [string[]]@('127.0.0.1', '192.168.0.1')
    }
    Type  = 'string'
    VirtualHub = [Microsoft.Azure.Management.Network.Models.SubResource]@{ Id = '<id>' }
    Zones = [string[]]@('zone1','zone2')
}
