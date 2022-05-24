require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsnamespaceserverconfiguration',
  dscmeta_resource_friendly_name: 'DFSNamespaceServerConfiguration',
  dscmeta_resource_name: 'MSFT_DFSNamespaceServerConfiguration',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSNamespaceServerConfiguration resource type.
         Automatically generated from version 4.4.0.0',
  features: ['simple_get_filter', 'canonicalize', 'custom_insync'],
  attributes: {
    name: {
      type:      'String',
      desc:      'Description of the purpose for this resource declaration.',
      behaviour: :namevar,
    },
    validation_mode: {
      type:      'Enum[property, resource]',
      desc:      'Whether to check if the resource is in the desired state by property (default) or using Invoke-DscResource in Test mode (resource).',
      behaviour: :parameter,
      default:   'property',
    },
    dsc_issingleinstance: {
      type: "Enum['Yes']",
      desc: "Specifies the resource is a single instance, the value must be 'Yes'.",
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ldaptimeoutsec: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'Specifies a time-out value, in seconds, for Lightweight Directory Access Protocol (LDAP) requests for the DFS namespace server.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_psdscrunascredential: {
      type: 'Optional[Struct[{ user => String[1], password => Sensitive[String[1]] }]]',
      desc: ' ',
      behaviour: :parameter,
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'PSCredential',
      mof_is_embedded: true,
    },
    dsc_usefqdn: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace server uses FQDNs in referrals.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_syncintervalsec: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'This interval controls how often domain-based DFS namespace root servers and domain controllers connect to the PDC emulator to get updates of DFS namespace metadata.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
  },
)
