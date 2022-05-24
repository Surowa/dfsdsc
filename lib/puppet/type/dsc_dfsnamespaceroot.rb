require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'dsc_dfsnamespaceroot',
  dscmeta_resource_friendly_name: 'DFSNamespaceRoot',
  dscmeta_resource_name: 'MSFT_DFSNamespaceRoot',
  dscmeta_resource_implementation: 'MOF',
  dscmeta_module_name: 'DFSDsc',
  dscmeta_module_version: '4.4.0.0',
  docs: 'The DSC DFSNamespaceRoot resource type.
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
    dsc_referralpriorityrank: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'Specifies the priority rank, as an integer, for a root target of the DFS namespace.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_description: {
      type: 'Optional[String]',
      desc: 'The description of the DFS Namespace.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_type: {
      type: "Enum['Standalone', 'DomainV1', 'DomainV2']",
      desc: 'Specifies the type of a DFS namespace as a Type object.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_enablesitecosting: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace uses cost-based selection.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_enablerootscalability: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace uses root scalability mode.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_referralpriorityclass: {
      type: "Optional[Enum['Global-High', 'SiteCost-High', 'SiteCost-Normal', 'SiteCost-Low', 'Global-Low']]",
      desc: 'Specifies the target priority class for a DFS namespace root.',

      mandatory_for_get: false,
      mandatory_for_set: false,
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
    dsc_ensure: {
      type: "Enum['Present', 'Absent']",
      desc: 'Specifies if the DFS Namespace root should exist.',

      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_timetolivesec: {
      type: 'Optional[Integer[0, 4294967295]]',
      desc: 'Specifies a TTL interval, in seconds, for referrals.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'UInt32',
      mof_is_embedded: false,
    },
    dsc_enabletargetfailback: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace uses target failback.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_targetpath: {
      type: 'String',
      desc: 'Specifies a path for a root target of the DFS namespace.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_state: {
      type: 'Optional[String]',
      desc: ' ',
      behaviour: :read_only,
      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'String',
      mof_is_embedded: false,
    },
    dsc_enableinsitereferrals: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace server provides a client only with referrals that are in the same site as the client.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_enableaccessbasedenumeration: {
      type: 'Optional[Boolean]',
      desc: 'Indicates whether a DFS namespace uses access-based enumeration.',

      mandatory_for_get: false,
      mandatory_for_set: false,
      mof_type: 'Boolean',
      mof_is_embedded: false,
    },
    dsc_path: {
      type: 'String',
      desc: 'Specifies a path for the root of a DFS namespace.',
      behaviour: :namevar,
      mandatory_for_get: true,
      mandatory_for_set: true,
      mof_type: 'String',
      mof_is_embedded: false,
    },
  },
)
