require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsreplicationgroupfolder',
  dscmeta_resource_friendly_name: 'DFSReplicationGroupFolder',
  dscmeta_resource_name: 'MSFT_DFSReplicationGroupFolder',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSReplicationGroupFolder resource type.
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
    dsc_description: {
      type: 'Optional[String]',
      desc: 'A description for the DFS Replication Group Folder.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_domainname: {
      type: 'Optional[String]',
      desc: 'The name of the AD Domain the DFS Replication Group Folder will be in.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_dfsnpath: {
      type: 'Optional[String]',
      desc: 'The DFS Namespace Path to this Replication Group folder is mapped to. This does NOT create the Namespace folders, it only sets the name in the folder object.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_filenametoexclude: {
      type: 'Optional[Array[String]]',
      desc: 'An array of file names to exclude from replication.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String[]',
      mof_is_embedded: false,
    },
    dsc_directorynametoexclude: {
      type: 'Optional[Array[String]]',
      desc: 'An array of directory names to exclude from replication.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String[]',
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
  },
)
