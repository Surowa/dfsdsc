require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsreplicationgroupconnection',
  dscmeta_resource_friendly_name: 'DFSReplicationGroupConnection',
  dscmeta_resource_name: 'MSFT_DFSReplicationGroupConnection',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSReplicationGroupConnection resource type.
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
    dsc_psdscrunascredential: {
      type: 'Optional[Struct[{ user => String[1], password => Sensitive[String[1]] }]]',
      desc: ' ',
      behaviour: :parameter,
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'PSCredential',
      mof_is_embedded: true,
    },
    dsc_ensureenabled: {
      type: "Optional[Enum['Enabled', 'Disabled']]",
      desc: 'Ensures that connection is either Enabled or Disabled.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ensure: {
      type: "Enum['Present', 'Absent']",
      desc: 'Specifies whether the DSF Replication Group connection should exist.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ensurerdcenabled: {
      type: "Optional[Enum['Enabled', 'Disabled']]",
      desc: 'Ensures remote differential compression is Enabled or Disabled.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_description: {
      type: 'Optional[String]',
      desc: 'A description for the DFS Replication Group connection.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_domainname: {
      type: 'Optional[String]',
      desc: 'The name of the AD Domain the DFS Replication Group connection should be in.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_groupname: {
      type: 'String',
      desc: 'The name of the DFS Replication Group.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_sourcecomputername: {
      type: 'String',
      desc: 'The name of the Replication Group source computer for the connection. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_destinationcomputername: {
      type: 'String',
      desc: 'The name of the Replication Group destination computer for the connection. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
  },
)
