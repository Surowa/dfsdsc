require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsreplicationgroupmembership',
  dscmeta_resource_friendly_name: 'DFSReplicationGroupMembership',
  dscmeta_resource_name: 'MSFT_DFSReplicationGroupMembership',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSReplicationGroupMembership resource type.
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
    dsc_conflictanddeletedpath: {
      type: 'Optional[String]',
      desc: 'The local content and deleted path for the DFS Replication Group Folder.',
      behaviour: :read_only,
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_foldername: {
      type: 'String',
      desc: 'The name of the DFS Replication Group Folder.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
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
    dsc_stagingpath: {
      type: 'Optional[String]',
      desc: 'The local staging path for the DFS Replication Group Folder.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_computername: {
      type: 'String',
      desc: 'The computer name of the Replication Group member. This can be specified using either the ComputerName or FQDN name for the member. If an FQDN name is used and the DomainName parameter is set, the FQDN domain name must match.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
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
    dsc_domainname: {
      type: 'Optional[String]',
      desc: 'The name of the AD Domain the DFS Replication Group this replication group is in.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_contentpath: {
      type: 'Optional[String]',
      desc: 'The local content path for the DFS Replication Group Folder.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_primarymember: {
      type: 'Optional[Boolean]',
      desc: 'Used to configure this as the Primary Member. Every folder must have at least one primary member for initial replication to take place.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_stagingpathquotainmb: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'The staging path quota size in MB for the DFS Replication Group Folder.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_readonly: {
      type: 'Optional[Boolean]',
      desc: 'Specify if this content path should be read only.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
  },
)
