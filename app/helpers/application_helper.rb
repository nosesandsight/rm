module ApplicationHelper

def Org_Namer(arg)
	
	holder = Organization.find(arg)
	holder[:name]
	#take in a Organization ID and return a name
end

end
