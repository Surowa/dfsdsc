require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsreplicationgroup',
  dscmeta_resource_friendly_name: 'DFSReplicationGroup',
  dscmeta_resource_name: 'MSFT_DFSReplicationGroup',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSReplicationGroup resource type.
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
    dsc_topology: {
      type: "Optional[Enum['Fullmesh', 'Manual']]",
      desc: 'This allows a replication topology to assign to the Replication Group. It defaults to Manual, which will not automatically create a topology. If set to Fullmesh, a full mesh topology between all members will be created.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_ensure: {
      type: "Enum['Present', 'Absent']",
      desc: 'Specifies whether the DSF Replication Group should exist.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_description: {
      type: 'Optional[String]',
      desc: 'A description for the DFS Replication Group.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_members: {
      type: 'Optional[Array[String]]',
      desc: 'A list of computers that are members of this Replication Group. These can be specified using either the ComputerName or FQDN name for each member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
    dsc_domainname: {
      type: 'Optional[String]',
      desc: 'The AD domain the Replication Group should created in.',

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
    dsc_folders: {
      type: 'Optional[Array[String]]',
      desc: 'A list of folders that are replicated in this Replication Group.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
    dsc_contentpaths: {
      type: 'Optional[Array[String]]',
      desc: 'An array of DFS Replication Group Content Paths to use for each of the Folders. This can have one entry for each Folder in the Folders parameter and should be set in th same order. If any entry is not blank then the Content Paths will need to be set manually by using the DFSReplicationGroupMembership resource.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
  },
)
