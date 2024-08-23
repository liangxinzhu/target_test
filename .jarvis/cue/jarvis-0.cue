package templates
// Generated by cue.

info: {
	title:   *"Generated by cue." | string
	version: *"no version" | string
}

#AWSElasticBlockStoreVolumeSource: {
	fsType?:    string
	partition?: int
	readOnly?:  bool
	volumeID:   string
	...
}
#Affinity: {
	nodeAffinity?:    null | #NodeAffinity
	podAffinity?:     null | #PodAffinity
	podAntiAffinity?: null | #PodAntiAffinity
	...
}
#AppArmorProfile: {
	localhostProfile?: null | string
	type:              #AppArmorProfileType
	...
}
#AppArmorProfileType: string
#AzureDiskVolumeSource: {
	cachingMode?: null | string
	diskName:     string
	diskURI:      string
	fsType?:      null | string
	kind?:        null | string
	readOnly?:    null | bool
	...
}
#AzureFileVolumeSource: {
	readOnly?:  bool
	secretName: string
	shareName:  string
	...
}
#CSIVolumeSource: {
	driver:                string
	fsType?:               null | string
	nodePublishSecretRef?: null | #LocalObjectReference
	readOnly?:             null | bool
	volumeAttributes?: [string]: string
	...
}
#Capabilities: {
	add?: [...#Capability]
	drop?: [...#Capability]
	...
}
#Capability: string
#CephFSVolumeSource: {
	monitors: [...string]
	path?:       string
	readOnly?:   bool
	secretFile?: string
	secretRef?:  null | #LocalObjectReference
	user?:       string
	...
}
#CinderVolumeSource: {
	fsType?:    string
	readOnly?:  bool
	secretRef?: null | #LocalObjectReference
	volumeID:   string
	...
}
#ClaimSource: {
	resourceClaimName?:         null | string
	resourceClaimTemplateName?: null | string
	...
}
#ClientIPConfig: {
	timeoutSeconds?: null | int & <=2147483647 & >=-2147483648
	...
}
#ClusterTrustBundleProjection: {
	labelSelector?: null | #LabelSelector
	name?:          null | string
	optional?:      null | bool
	path:           string
	signerName?:    null | string
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
#ConfigMapEnvSource: #LocalObjectReference & {
	optional?: null | bool
	...
}
#ConfigMapKeySelector: #LocalObjectReference & {
	key: _
	...
} & {
	key?:      string
	optional?: null | bool
	...
}
#ConfigMapProjection: #LocalObjectReference & {
	items?: [...#KeyToPath]
	optional?: null | bool
	...
}
#ConfigMapVolumeSource: #LocalObjectReference & {
	defaultMode?: null | int & <=2147483647 & >=-2147483648
	items?: [...#KeyToPath]
	optional?: null | bool
	...
}
#Container: {
	args?: [...string]
	command?: [...string]
	env?: [...#EnvVar]
	envFrom?: [...#EnvFromSource]
	image?:           string
	imagePullPolicy?: #PullPolicy
	lifecycle?:       null | #Lifecycle
	livenessProbe?:   null | #Probe
	name:             string
	ports?: [...#ContainerPort]
	readinessProbe?: null | #Probe
	resizePolicy?: [...#ContainerResizePolicy]
	resources?:                #ResourceRequirements
	restartPolicy?:            null | string
	securityContext?:          null | #SecurityContext
	startupProbe?:             null | #Probe
	stdin?:                    bool
	stdinOnce?:                bool
	terminationMessagePath?:   string
	terminationMessagePolicy?: #TerminationMessagePolicy
	tty?:                      bool
	volumeDevices?: [...#VolumeDevice]
	volumeMounts?: [...#VolumeMount]
	workingDir?: string
	...
}
#ContainerPort: {
	containerPort: int
	hostIP?:       string
	hostPort?:     int
	name?:         string
	protocol?:     #Protocol
	...
}
#ContainerResizePolicy: {
	resourceName:  #ResourceName
	restartPolicy: #ResourceResizeRestartPolicy
	...
}
#DNSPolicy: string
#Deployment: #TypeMeta & {
	metadata?: #ObjectMeta
	spec?:     #DeploymentSpec
	status?:   #DeploymentStatus
	...
}
#Deployment0: #Deployment & {
	apiVersion: _
	kind:       _
	metadata:   _
	spec:       _
	...
} & {
	apiVersion?: "apps/v1"
	kind?:       "Deployment"
	metadata?: {
		name: "simple-deployment"
		...
	}
	spec?: {
		replicas: 2 & int
		selector: {
			matchLabels: {
				app: "MyApp"
				...
			}
			...
		}
		template: {
			metadata: {
				labels: {
					app: "MyApp"
					...
				}
				...
			}
			spec: {
				containers: [{
					image: "myapp:latest"
					name:  "myapp-container"
					ports: [{
						containerPort: 8080 & int
						...
					}] | *[{
						containerPort: 8080
						...
					}]
					...
				}] | *[{
					image: "myapp:latest"
					name:  "myapp-container"
					ports: [{
						containerPort: 8080
						...
					}]
					...
				}]
				...
			}
			...
		}
		...
	}
	...
}
#DeploymentCondition: {
	lastTransitionTime?: #Time
	lastUpdateTime?:     #Time
	message?:            string
	reason?:             string
	status:              #ConditionStatus
	type:                #DeploymentConditionType
	...
}
#DeploymentConditionType: string
#DeploymentSpec: {
	minReadySeconds?:         int
	paused?:                  bool
	progressDeadlineSeconds?: null | int & <=2147483647 & >=-2147483648
	replicas?:                null | int & <=2147483647 & >=-2147483648
	revisionHistoryLimit?:    null | int & <=2147483647 & >=-2147483648
	selector?:                null | #LabelSelector
	strategy?:                #DeploymentStrategy
	template:                 #PodTemplateSpec
	...
}
#DeploymentStatus: {
	availableReplicas?: int
	collisionCount?:    null | int & <=2147483647 & >=-2147483648
	conditions?: [...#DeploymentCondition]
	observedGeneration?:  int
	readyReplicas?:       int
	replicas?:            int
	unavailableReplicas?: int
	updatedReplicas?:     int
	...
}
#DeploymentStrategy: {
	rollingUpdate?: null | #RollingUpdateDeployment
	type?:          #DeploymentStrategyType
	...
}
#DeploymentStrategyType: string
#DownwardAPIProjection: {
	items?: [...#DownwardAPIVolumeFile]
	...
}
#DownwardAPIVolumeFile: {
	fieldRef?:         null | #ObjectFieldSelector
	mode?:             null | int & <=2147483647 & >=-2147483648
	path:              string
	resourceFieldRef?: null | #ResourceFieldSelector
	...
}
#DownwardAPIVolumeSource: {
	defaultMode?: null | int & <=2147483647 & >=-2147483648
	items?: [...#DownwardAPIVolumeFile]
	...
}
#EmptyDirVolumeSource: {
	medium?:    #StorageMedium
	sizeLimit?: null | #Quantity
	...
}
#EnvFromSource: {
	configMapRef?: null | #ConfigMapEnvSource
	prefix?:       string
	secretRef?:    null | #SecretEnvSource
	...
}
#EnvVar: {
	name:       string
	value?:     string
	valueFrom?: null | #EnvVarSource
	...
}
#EnvVarSource: {
	configMapKeyRef?:  null | #ConfigMapKeySelector
	fieldRef?:         null | #ObjectFieldSelector
	resourceFieldRef?: null | #ResourceFieldSelector
	secretKeyRef?:     null | #SecretKeySelector
	...
}
#EphemeralContainer: #EphemeralContainerCommon & {
	targetContainerName?: string
	...
}
#EphemeralContainerCommon: {
	args?: [...string]
	command?: [...string]
	env?: [...#EnvVar]
	envFrom?: [...#EnvFromSource]
	image?:           string
	imagePullPolicy?: #PullPolicy
	lifecycle?:       null | #Lifecycle
	livenessProbe?:   null | #Probe
	name:             string
	ports?: [...#ContainerPort]
	readinessProbe?: null | #Probe
	resizePolicy?: [...#ContainerResizePolicy]
	resources?:                #ResourceRequirements
	restartPolicy?:            null | string
	securityContext?:          null | #SecurityContext
	startupProbe?:             null | #Probe
	stdin?:                    bool
	stdinOnce?:                bool
	terminationMessagePath?:   string
	terminationMessagePolicy?: #TerminationMessagePolicy
	tty?:                      bool
	volumeDevices?: [...#VolumeDevice]
	volumeMounts?: [...#VolumeMount]
	workingDir?: string
	...
}
#EphemeralVolumeSource: {
	volumeClaimTemplate?: null | #PersistentVolumeClaimTemplate
	...
}
#ExecAction: {
	command?: [...string]
	...
}
#FCVolumeSource: {
	fsType?:   string
	lun?:      null | int & <=2147483647 & >=-2147483648
	readOnly?: bool
	targetWWNs?: [...string]
	wwids?: [...string]
	...
}
#FieldsV1: _
#FlexVolumeSource: {
	driver:  string
	fsType?: string
	options?: [string]: string
	readOnly?:  bool
	secretRef?: null | #LocalObjectReference
	...
}
#FlockerVolumeSource: {
	datasetName?: string
	datasetUUID?: string
	...
}
#GCEPersistentDiskVolumeSource: {
	fsType?:    string
	partition?: int
	pdName:     string
	readOnly?:  bool
	...
}
#GRPCAction: {
	port:     int
	service?: null | string
	...
}
#GitRepoVolumeSource: {
	directory?: string
	repository: string
	revision?:  string
	...
}
#GlusterfsVolumeSource: {
	endpoints: string
	path:      string
	readOnly?: bool
	...
}
#HTTPGetAction: {
	host?: string
	httpHeaders?: [...#HTTPHeader]
	path?:   string
	port:    #IntOrString
	scheme?: #URIScheme
	...
}
#HTTPHeader: {
	name:  string
	value: string
	...
}
#HostAlias: {
	hostnames?: [...string]
	ip?: string
	...
}
#HostPathVolumeSource: {
	path:  string
	type?: null | string
	...
}
#IPFamily: string
#ISCSIVolumeSource: {
	chapAuthDiscovery?: bool
	chapAuthSession?:   bool
	fsType?:            string
	initiatorName?:     null | string
	iqn:                string
	iscsiInterface?:    string
	lun:                int
	portals?: [...string]
	readOnly?:    bool
	secretRef?:   null | #LocalObjectReference
	targetPortal: string
	...
}
#Instance: {
	objects: {
		obj0: #Service0
		obj1: #Deployment0
		...
	}
	...
}
#IntOrString: _
#KeyToPath: {
	key:   string
	mode?: null | int & <=2147483647 & >=-2147483648
	path:  string
	...
}
#LabelSelector: {
	matchExpressions?: [...#LabelSelectorRequirement]
	matchLabels?: [string]: string
	...
}
#LabelSelectorOperator: string
#LabelSelectorRequirement: {
	key:      string
	operator: #LabelSelectorOperator
	values?: [...string]
	...
}
#Lifecycle: {
	postStart?: null | #LifecycleHandler
	preStop?:   null | #LifecycleHandler
	...
}
#LifecycleHandler: {
	exec?:      null | #ExecAction
	httpGet?:   null | #HTTPGetAction
	sleep?:     null | #SleepAction
	tcpSocket?: null | #TCPSocketAction
	...
}
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
#LocalObjectReference: {
	name?: string
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
#NFSVolumeSource: {
	path:      string
	readOnly?: bool
	server:    string
	...
}
#NodeAffinity: {
	preferredDuringSchedulingIgnoredDuringExecution?: [...#PreferredSchedulingTerm]
	requiredDuringSchedulingIgnoredDuringExecution?: null | #NodeSelector
	...
}
#NodeSelector: {
	nodeSelectorTerms: [...#NodeSelectorTerm]
	...
}
#NodeSelectorOperator: string
#NodeSelectorRequirement: {
	key:      string
	operator: #NodeSelectorOperator
	values?: [...string]
	...
}
#NodeSelectorTerm: {
	matchExpressions?: [...#NodeSelectorRequirement]
	matchFields?: [...#NodeSelectorRequirement]
	...
}
#OSName: string
#ObjectFieldSelector: {
	apiVersion?: string
	fieldPath:   string
	...
}
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
#PersistentVolumeAccessMode: string
#PersistentVolumeClaimSpec: {
	accessModes?: [...#PersistentVolumeAccessMode]
	dataSource?:                null | #TypedLocalObjectReference
	dataSourceRef?:             null | #TypedObjectReference
	resources?:                 #VolumeResourceRequirements
	selector?:                  null | #LabelSelector
	storageClassName?:          null | string
	volumeAttributesClassName?: null | string
	volumeMode?:                null | string
	volumeName?:                string
	...
}
#PersistentVolumeClaimTemplate: {
	metadata?: #ObjectMeta
	spec:      #PersistentVolumeClaimSpec
	...
}
#PersistentVolumeClaimVolumeSource: {
	claimName: string
	readOnly?: bool
	...
}
#PhotonPersistentDiskVolumeSource: {
	fsType?: string
	pdID:    string
	...
}
#PodAffinity: {
	preferredDuringSchedulingIgnoredDuringExecution?: [...#WeightedPodAffinityTerm]
	requiredDuringSchedulingIgnoredDuringExecution?: [...#PodAffinityTerm]
	...
}
#PodAffinityTerm: {
	labelSelector?: null | #LabelSelector
	matchLabelKeys?: [...string]
	mismatchLabelKeys?: [...string]
	namespaceSelector?: null | #LabelSelector
	namespaces?: [...string]
	topologyKey: string
	...
}
#PodAntiAffinity: {
	preferredDuringSchedulingIgnoredDuringExecution?: [...#WeightedPodAffinityTerm]
	requiredDuringSchedulingIgnoredDuringExecution?: [...#PodAffinityTerm]
	...
}
#PodConditionType: string
#PodDNSConfig: {
	nameservers?: [...string]
	options?: [...#PodDNSConfigOption]
	searches?: [...string]
	...
}
#PodDNSConfigOption: {
	name?:  string
	value?: null | string
	...
}
#PodOS: {
	name: #OSName
	...
}
#PodReadinessGate: {
	conditionType: #PodConditionType
	...
}
#PodResourceClaim: {
	name:    string
	source?: #ClaimSource
	...
}
#PodSchedulingGate: {
	name: string
	...
}
#PodSecurityContext: {
	appArmorProfile?:     null | #AppArmorProfile
	fsGroup?:             null | int & <=9223372036854775807 & >=-9223372036854775808
	fsGroupChangePolicy?: null | string
	runAsGroup?:          null | int & <=9223372036854775807 & >=-9223372036854775808
	runAsNonRoot?:        null | bool
	runAsUser?:           null | int & <=9223372036854775807 & >=-9223372036854775808
	seLinuxOptions?:      null | #SELinuxOptions
	seccompProfile?:      null | #SeccompProfile
	supplementalGroups?: [...int]
	sysctls?: [...#Sysctl]
	windowsOptions?: null | #WindowsSecurityContextOptions
	...
}
#PodSpec: {
	activeDeadlineSeconds?:        null | int & <=9223372036854775807 & >=-9223372036854775808
	affinity?:                     null | #Affinity
	automountServiceAccountToken?: null | bool
	containers: [...#Container]
	dnsConfig?:          null | #PodDNSConfig
	dnsPolicy?:          #DNSPolicy
	enableServiceLinks?: null | bool
	ephemeralContainers?: [...#EphemeralContainer]
	hostAliases?: [...#HostAlias]
	hostIPC?:     bool
	hostNetwork?: bool
	hostPID?:     bool
	hostUsers?:   null | bool
	hostname?:    string
	imagePullSecrets?: [...#LocalObjectReference]
	initContainers?: [...#Container]
	nodeName?: string
	nodeSelector?: [string]: string
	os?:                null | #PodOS
	overhead?:          #ResourceList
	preemptionPolicy?:  null | string
	priority?:          null | int & <=2147483647 & >=-2147483648
	priorityClassName?: string
	readinessGates?: [...#PodReadinessGate]
	resourceClaims?: [...#PodResourceClaim]
	restartPolicy?:    #RestartPolicy
	runtimeClassName?: null | string
	schedulerName?:    string
	schedulingGates?: [...#PodSchedulingGate]
	securityContext?:               null | #PodSecurityContext
	serviceAccount?:                string
	serviceAccountName?:            string
	setHostnameAsFQDN?:             null | bool
	shareProcessNamespace?:         null | bool
	subdomain?:                     string
	terminationGracePeriodSeconds?: null | int & <=9223372036854775807 & >=-9223372036854775808
	tolerations?: [...#Toleration]
	topologySpreadConstraints?: [...#TopologySpreadConstraint]
	volumes?: [...#Volume]
	...
}
#PodTemplateSpec: {
	metadata?: #ObjectMeta
	spec?:     #PodSpec
	...
}
#PortStatus: {
	error?:   null | string
	port:     int
	protocol: #Protocol
	...
}
#PortworxVolumeSource: {
	fsType?:   string
	readOnly?: bool
	volumeID:  string
	...
}
#PreferredSchedulingTerm: {
	preference: #NodeSelectorTerm
	weight:     int
	...
}
#Probe: #ProbeHandler & {
	failureThreshold?:              int
	initialDelaySeconds?:           int
	periodSeconds?:                 int
	successThreshold?:              int
	terminationGracePeriodSeconds?: null | int & <=9223372036854775807 & >=-9223372036854775808
	timeoutSeconds?:                int
	...
}
#ProbeHandler: {
	exec?:      null | #ExecAction
	grpc?:      null | #GRPCAction
	httpGet?:   null | #HTTPGetAction
	tcpSocket?: null | #TCPSocketAction
	...
}
#ProjectedVolumeSource: {
	defaultMode?: null | int & <=2147483647 & >=-2147483648
	sources?: [...#VolumeProjection]
	...
}
#Protocol:   string
#PullPolicy: string
#Quantity:   _
#QuobyteVolumeSource: {
	group?:    string
	readOnly?: bool
	registry:  string
	tenant?:   string
	user?:     string
	volume:    string
	...
}
#RBDVolumeSource: {
	fsType?:  string
	image:    string
	keyring?: string
	monitors: [...string]
	pool?:      string
	readOnly?:  bool
	secretRef?: null | #LocalObjectReference
	user?:      string
	...
}
#ResourceClaim: {
	name: string
	...
}
#ResourceFieldSelector: {
	containerName?: string
	divisor?:       #Quantity
	resource:       string
	...
}
#ResourceList: [string]: #Quantity
#ResourceName: string
#ResourceRequirements: {
	claims?: [...#ResourceClaim]
	limits?:   #ResourceList
	requests?: #ResourceList
	...
}
#ResourceResizeRestartPolicy: string
#RestartPolicy:               string
#RollingUpdateDeployment: {
	maxSurge?:       null | #IntOrString
	maxUnavailable?: null | #IntOrString
	...
}
#SELinuxOptions: {
	level?: string
	role?:  string
	type?:  string
	user?:  string
	...
}
#ScaleIOVolumeSource: {
	fsType?:           string
	gateway:           string
	protectionDomain?: string
	readOnly?:         bool
	secretRef?:        null | #LocalObjectReference
	sslEnabled?:       bool
	storageMode?:      string
	storagePool?:      string
	system:            string
	volumeName?:       string
	...
}
#SeccompProfile: {
	localhostProfile?: null | string
	type:              #SeccompProfileType
	...
}
#SeccompProfileType: string
#SecretEnvSource: #LocalObjectReference & {
	optional?: null | bool
	...
}
#SecretKeySelector: #LocalObjectReference & {
	key: _
	...
} & {
	key?:      string
	optional?: null | bool
	...
}
#SecretProjection: #LocalObjectReference & {
	items?: [...#KeyToPath]
	optional?: null | bool
	...
}
#SecretVolumeSource: {
	defaultMode?: null | int & <=2147483647 & >=-2147483648
	items?: [...#KeyToPath]
	optional?:   null | bool
	secretName?: string
	...
}
#SecurityContext: {
	allowPrivilegeEscalation?: null | bool
	appArmorProfile?:          null | #AppArmorProfile
	capabilities?:             null | #Capabilities
	privileged?:               null | bool
	procMount?:                null | string
	readOnlyRootFilesystem?:   null | bool
	runAsGroup?:               null | int & <=9223372036854775807 & >=-9223372036854775808
	runAsNonRoot?:             null | bool
	runAsUser?:                null | int & <=9223372036854775807 & >=-9223372036854775808
	seLinuxOptions?:           null | #SELinuxOptions
	seccompProfile?:           null | #SeccompProfile
	windowsOptions?:           null | #WindowsSecurityContextOptions
	...
}
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
		name: "simple-service"
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
			app: "MyApp"
			...
		}
		...
	}
	...
}
#ServiceAccountTokenProjection: {
	audience?:          string
	expirationSeconds?: null | int & <=9223372036854775807 & >=-9223372036854775808
	path:               string
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
#SleepAction: {
	seconds: int
	...
}
#StorageMedium: string
#StorageOSVolumeSource: {
	fsType?:          string
	readOnly?:        bool
	secretRef?:       null | #LocalObjectReference
	volumeName?:      string
	volumeNamespace?: string
	...
}
#Sysctl: {
	name:  string
	value: string
	...
}
#TCPSocketAction: {
	host?: string
	port:  #IntOrString
	...
}
#TaintEffect:              string
#TerminationMessagePolicy: string
#Time:                     _
#Toleration: {
	effect?:            #TaintEffect
	key?:               string
	operator?:          #TolerationOperator
	tolerationSeconds?: null | int & <=9223372036854775807 & >=-9223372036854775808
	value?:             string
	...
}
#TolerationOperator: string
#TopologySpreadConstraint: {
	labelSelector?: null | #LabelSelector
	matchLabelKeys?: [...string]
	maxSkew:             int
	minDomains?:         null | int & <=2147483647 & >=-2147483648
	nodeAffinityPolicy?: null | string
	nodeTaintsPolicy?:   null | string
	topologyKey:         string
	whenUnsatisfiable:   #UnsatisfiableConstraintAction
	...
}
#TypeMeta: {
	apiVersion?: string
	kind?:       string
	...
}
#TypedLocalObjectReference: {
	apiGroup?: null | string
	kind:      string
	name:      string
	...
}
#TypedObjectReference: {
	apiGroup?:  null | string
	kind:       string
	name:       string
	namespace?: null | string
	...
}
#UID:                           string
#URIScheme:                     string
#UnsatisfiableConstraintAction: string
#Volume: #VolumeSource & {
	name: _
	...
} & {
	name?: string
	...
}
#VolumeDevice: {
	devicePath: string
	name:       string
	...
}
#VolumeMount: {
	mountPath:          string
	mountPropagation?:  null | string
	name:               string
	readOnly?:          bool
	recursiveReadOnly?: null | string
	subPath?:           string
	subPathExpr?:       string
	...
}
#VolumeProjection: {
	clusterTrustBundle?:  null | #ClusterTrustBundleProjection
	configMap?:           null | #ConfigMapProjection
	downwardAPI?:         null | #DownwardAPIProjection
	secret?:              null | #SecretProjection
	serviceAccountToken?: null | #ServiceAccountTokenProjection
	...
}
#VolumeResourceRequirements: {
	limits?:   #ResourceList
	requests?: #ResourceList
	...
}
#VolumeSource: {
	awsElasticBlockStore?:  null | #AWSElasticBlockStoreVolumeSource
	azureDisk?:             null | #AzureDiskVolumeSource
	azureFile?:             null | #AzureFileVolumeSource
	cephfs?:                null | #CephFSVolumeSource
	cinder?:                null | #CinderVolumeSource
	configMap?:             null | #ConfigMapVolumeSource
	csi?:                   null | #CSIVolumeSource
	downwardAPI?:           null | #DownwardAPIVolumeSource
	emptyDir?:              null | #EmptyDirVolumeSource
	ephemeral?:             null | #EphemeralVolumeSource
	fc?:                    null | #FCVolumeSource
	flexVolume?:            null | #FlexVolumeSource
	flocker?:               null | #FlockerVolumeSource
	gcePersistentDisk?:     null | #GCEPersistentDiskVolumeSource
	gitRepo?:               null | #GitRepoVolumeSource
	glusterfs?:             null | #GlusterfsVolumeSource
	hostPath?:              null | #HostPathVolumeSource
	iscsi?:                 null | #ISCSIVolumeSource
	nfs?:                   null | #NFSVolumeSource
	persistentVolumeClaim?: null | #PersistentVolumeClaimVolumeSource
	photonPersistentDisk?:  null | #PhotonPersistentDiskVolumeSource
	portworxVolume?:        null | #PortworxVolumeSource
	projected?:             null | #ProjectedVolumeSource
	quobyte?:               null | #QuobyteVolumeSource
	rbd?:                   null | #RBDVolumeSource
	scaleIO?:               null | #ScaleIOVolumeSource
	secret?:                null | #SecretVolumeSource
	storageos?:             null | #StorageOSVolumeSource
	vsphereVolume?:         null | #VsphereVirtualDiskVolumeSource
	...
}
#VsphereVirtualDiskVolumeSource: {
	fsType?:            string
	storagePolicyID?:   string
	storagePolicyName?: string
	volumePath:         string
	...
}
#WeightedPodAffinityTerm: {
	podAffinityTerm: #PodAffinityTerm
	weight:          int
	...
}
#WindowsSecurityContextOptions: {
	gmsaCredentialSpec?:     null | string
	gmsaCredentialSpecName?: null | string
	hostProcess?:            null | bool
	runAsUserName?:          null | string
	...
}
