package templates
// Generated by cue.

info: {
	title:   *"Generated by cue." | string
	version: *"no version" | string
}

#ClientIPConfig: {
	timeoutSeconds?: null | int & <=2147483647 & >=-2147483648
	...
}
#Condition: {
	lastTransitionTime:  #Time
	message:             string
	observedGeneration?: int
	reason:              string
	status:              #ConditionStatus
	type:                string
	...
}
#ConditionStatus: string
#FieldsV1:        _
#IPFamily:        string
#Instance: {
	objects: {
		obj0: #Service0
		...
	}
	...
}
#IntOrString: _
#LoadBalancerIngress: {
	hostname?: string
	ip?:       string
	ipMode?:   null | string
	ports?: [...#PortStatus]
	...
}
#LoadBalancerStatus: {
	ingress?: [...#LoadBalancerIngress]
	...
}
#ManagedFieldsEntry: {
	apiVersion?:  string
	fieldsType?:  string
	fieldsV1?:    null | #FieldsV1
	manager?:     string
	operation?:   #ManagedFieldsOperationType
	subresource?: string
	time?:        null | #Time
	...
}
#ManagedFieldsOperationType: string
#ObjectMeta: {
	annotations?: [string]: string
	creationTimestamp?:          #Time
	deletionGracePeriodSeconds?: null | int & <=9223372036854775807 & >=-9223372036854775808
	deletionTimestamp?:          null | #Time
	finalizers?: [...string]
	generateName?: string
	generation?:   int
	labels?: [string]: string
	managedFields?: [...#ManagedFieldsEntry]
	name?:      string
	namespace?: string
	ownerReferences?: [...#OwnerReference]
	resourceVersion?: string
	selfLink?:        string
	uid?:             #UID
	...
}
#OwnerReference: {
	apiVersion:          string
	blockOwnerDeletion?: null | bool
	controller?:         null | bool
	kind:                string
	name:                string
	uid:                 #UID
	...
}
#PortStatus: {
	error?:   null | string
	port:     int
	protocol: #Protocol
	...
}
#Protocol: string
#Service: #TypeMeta & {
	metadata?: #ObjectMeta
	spec?:     #ServiceSpec
	status?:   #ServiceStatus
	...
}
#Service0: #Service & {
	apiVersion: _
	kind:       _
	metadata:   _
	spec:       _
	...
} & {
	apiVersion?: "v1"
	kind?:       "Service"
	metadata?: {
		labels: {
			app: "my-app"
			...
		}
		name: "my-service"
		...
	}
	spec?: {
		ports: [{
			port:       80 & int
			protocol:   "TCP"
			targetPort: 8080 & int
			...
		}] | *[{
			port:       80
			protocol:   "TCP"
			targetPort: 8080
			...
		}]
		selector: {
			app: "my-app"
			...
		}
		type: "ClusterIP"
		...
	}
	...
}
#ServiceAffinity:              string
#ServiceExternalTrafficPolicy: string
#ServicePort: {
	appProtocol?: null | string
	name?:        string
	nodePort?:    int
	port:         int
	protocol?:    #Protocol
	targetPort?:  #IntOrString
	...
}
#ServiceSpec: {
	allocateLoadBalancerNodePorts?: null | bool
	clusterIP?:                     string
	clusterIPs?: [...string]
	externalIPs?: [...string]
	externalName?:          string
	externalTrafficPolicy?: #ServiceExternalTrafficPolicy
	healthCheckNodePort?:   int
	internalTrafficPolicy?: null | string
	ipFamilies?: [...#IPFamily]
	ipFamilyPolicy?:    null | string
	loadBalancerClass?: null | string
	loadBalancerIP?:    string
	loadBalancerSourceRanges?: [...string]
	ports?: [...#ServicePort]
	publishNotReadyAddresses?: bool
	selector?: [string]: string
	sessionAffinity?:       #ServiceAffinity
	sessionAffinityConfig?: null | #SessionAffinityConfig
	trafficDistribution?:   null | string
	type?:                  #ServiceType
	...
}
#ServiceStatus: {
	conditions?: [...#Condition]
	loadBalancer?: #LoadBalancerStatus
	...
}
#ServiceType: string
#SessionAffinityConfig: {
	clientIP?: null | #ClientIPConfig
	...
}
#Time: _
#TypeMeta: {
	apiVersion?: string
	kind?:       string
	...
}
#UID: string
