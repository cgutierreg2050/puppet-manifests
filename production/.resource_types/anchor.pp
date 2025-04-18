# This file was automatically generated on 2025-02-28 22:07:18 +0000.
# Use the 'puppet generate types' command to regenerate this file.

# @summary
#   A simple resource type intended to be used as an anchor in a composite class.
# 
# > Note: this has been replaced by core puppet `contain()` method. Please see https://puppet.com/docs/puppet/latest/lang_containment.html for more information.
# 
# In Puppet 2.6, when a class declares another class, the resources in the
# interior class are not contained by the exterior class. This interacts badly
# with the pattern of composing complex modules from smaller classes, as it
# makes it impossible for end users to specify order relationships between the
# exterior class and other modules.
# 
# The anchor type lets you work around this. By sandwiching any interior
# classes between two no-op resources that _are_ contained by the exterior
# class, you can ensure that all resources in the module are contained.
# 
# ```
# class ntp {
#   # These classes will have the correct order relationship with each
#   # other. However, without anchors, they won't have any order
#   # relationship to Class['ntp'].
#   class { 'ntp::package': }
#   -> class { 'ntp::config': }
#   -> class { 'ntp::service': }
# 
#   # These two resources "anchor" the composed classes within the ntp
#   # class.
#   anchor { 'ntp::begin': } -> Class['ntp::package']
#   Class['ntp::service']    -> anchor { 'ntp::end': }
# }
# ```
# 
# This allows the end user of the ntp module to establish require and before
# relationships with Class['ntp']:
# 
# ```
# class { 'ntp': } -> class { 'mcollective': }
# class { 'mcollective': } -> class { 'ntp': }
# ```
Puppet::Resource::ResourceType3.new(
  'anchor',
  [

  ],
  [
    # The name of the anchor resource.
    Puppet::Resource::Param(Any, 'name')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
