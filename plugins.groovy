// Parses through the current installed list of plugins in your Jenkins Instance
// Grabbing only the ShortName, and its version
def plugins = jenkins.model.Jenkins.instance.getPluginManager().getPlugins()
plugins.each {println "${it.getShortName()}: ${it.getVersion()}"}
