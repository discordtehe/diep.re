typedef struct CGPoint {
    CGFloat x;
    CGFloat y;
} CGPoint;

typedef struct CGSize {
    CGFloat width;
    CGFloat height;
} CGSize;

typedef struct CGRect {
    CGPoint origin;
    CGSize size;
} CGRect;

typedef struct _NSZone {
} // Error Processing Struct Fields

typedef struct _ccColorThreeB {
    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char dontUserMe;
} _ccColorThreeB;

typedef struct GADAdSize {
    CGSize size;
    NSUInteger flags;
} GADAdSize;

typedef struct ? {
    float Red;
    float Green;
    float Blue;
    float Alpha;
} ?;

typedef struct _NSRange {
    NSUInteger location;
    NSUInteger length;
} _NSRange;

typedef struct _ccBlendFunc {
    unsigned int src;
    unsigned int dst;
} _ccBlendFunc;

typedef struct UIEdgeInsets {
    CGFloat top;
    CGFloat left;
    CGFloat bottom;
    CGFloat right;
} UIEdgeInsets;

typedef struct NSDictionary {
    Class field0;
} NSDictionary;

typedef struct opaqueCMFormatDescription {
} // Error Processing Struct Fields

typedef struct AudioStreamBasicDescription {
    CGFloat mSampleRate;
    unsigned int mFormatID;
    unsigned int mFormatFlags;
    unsigned int mBytesPerPacket;
    unsigned int mFramesPerPacket;
    unsigned int mBytesPerFrame;
    unsigned int mChannelsPerFrame;
    unsigned int mBitsPerChannel;
    unsigned int mReserved;
} AudioStreamBasicDescription;

typedef struct FNFFrameMetadata {
    unsigned int field0;
    ? field1;
    ? field2;
    NSInteger field3;
    ? field4;
    unsigned int field5;
} FNFFrameMetadata;

typedef struct CGAffineTransform {
    CGFloat a;
    CGFloat b;
    CGFloat c;
    CGFloat d;
    CGFloat tx;
    CGFloat ty;
} CGAffineTransform;

typedef struct opaqueCMSampleBuffer {
} // Error Processing Struct Fields

typedef struct __CVBuffer {
} // Error Processing Struct Fields

typedef struct OpaqueCMTimebase {
} // Error Processing Struct Fields

typedef struct FBAdSize {
    CGSize size;
} FBAdSize;

typedef struct AudioStreamPacketDescription {
    NSInteger field0;
    unsigned int field1;
    unsigned int field2;
} AudioStreamPacketDescription;

typedef struct AudioQueueBuffer {
    unsigned int field0;
    void field1;
    unsigned int field2;
    void field3;
    unsigned int field4;
    AudioStreamPacketDescription field5;
    unsigned int field6;
} AudioQueueBuffer;

typedef struct FNFPlayerStallState {
    BOOL isStalled;
    BOOL isStartStall;
    NSUInteger stallTimeInMilliseconds;
} FNFPlayerStallState;

typedef struct FNFPlayerInternalState {
    BOOL playingRequested;
    BOOL isPlaying;
    BOOL endTimeReached;
    BOOL firstAudioFrameEnqueued;
    BOOL stoppedEnqueuingVideo;
    BOOL stoppedEnqueuingAudio;
    BOOL isFirstVideoFrame;
    BOOL recreatedLayerOnError;
    BOOL audioEngineInitialized;
    BOOL isReadyForDisplay;
    BOOL previousSeekCompletionBlockExecuted;
    BOOL muted;
    ? lastStartingTime;
    ? lastRequestedStartTime;
    ? latestEnqueuedVideoPts;
    ? latestEnqueuedAudioPts;
    ? latestEnqueuedAudioDts;
    float lastPlayRate;
    float playRate;
    id playbackTimeObserverForAsset;
    id durationTimerForAsset;
    id stallTimerObserver;
    id seekFrameUpdateObserver;
    id sampleBufferFlushTimerObserver;
    id levelMeterTimerObserver;
    ? backgroundPauseTime;
    unsigned int sampleAudioFrameSize;
    id representationId;
    NSUInteger NSString;
    NSInteger lastFrameSeekAttempt;
    FNFPlayerStallState status;
    CGRect stallState;
    id bounds;
    unk frameSeekCompletionBlock;
    id loggingContext;
    id <FNFVideoPlaybackLoggingContext>;
    id playerItemWarning;
    id NSError;
    ? playerItemError;
} FNFPlayerInternalState;

typedef struct FNFSeekStatus {
    BOOL field0;
    ? field1;
    BOOL field2;
    BOOL field3;
    BOOL field4;
    NSUInteger field5;
    NSUInteger field6;
} FNFSeekStatus;

typedef struct Color<float> {
    unk ;
    ? ;
    float Components;
} Color<float>;

typedef struct BlendModeSettings {
    BOOL Enabled;
    int Source;
    int Destination;
} BlendModeSettings;

typedef struct StencilBufferSettings {
    BOOL Enabled;
    unsigned int Mask;
    int Function;
    unsigned int FunctionReference;
    unsigned int FunctionMask;
    int OnFail;
    int OnFailZ;
    int OnPassZ;
} StencilBufferSettings;

typedef struct RenderState {
    BOOL CullingEnabled;
    BOOL DepthTestingEnabled;
    Color<float> ClearColor;
    BlendModeSettings BlendMode;
    StencilBufferSettings StencilBuffer;
} RenderState;

typedef struct VBO {
    unsigned int OpenGLID;
    unsigned int GLComponentType;
    unsigned int GLBufferType;
    int BufferType;
    unsigned int ComponentsPerElement;
    int ElementComponentType;
    unsigned int ElementSize;
    unsigned int ElementCount;
    unsigned int ElementStride;
    char * Data;
    BOOL NormalizeData;
} VBO;

typedef struct Texture {
} // Error Processing Struct Fields

typedef struct __shared_weak_count {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Renderer::Texture> {
    Texture __ptr_;
    __shared_weak_count __cntrl_;
} shared_ptr<mc::Renderer::Texture>;

typedef struct Mesh {
    VBO IndexVBO;
    VBO VertexVBO;
    VBO TexCoordVBO;
    VBO ColorVBO;
    int Primitive;
    shared_ptr<mc::Renderer::Texture> TextureToUse;
    unsigned int VertexCount;
} Mesh;

typedef struct Shader {
} // Error Processing Struct Fields

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > __data_;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> __value_;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > __ptr_;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> > {
    float __value_;
} __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > __bucket_list_;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > > __p1_;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> > __p2_;
    __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> > __p3_;
} __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > >;

typedef struct unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > > {
    __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > > __table_;
} unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > >;

typedef struct RenderJob {
    RenderState state;
    Mesh mesh;
    Shader shader;
    unsigned int startIndex;
    unsigned int indexCount;
    unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > > extraUniforms;
} RenderJob;

typedef struct _ccColor4B {
    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char a;
} _ccColor4B;

typedef struct pair<CGPoint, CGPoint> {
    CGPoint first;
    CGPoint second;
} pair<CGPoint, CGPoint>;

typedef struct __tree_end_node<std::__1::__tree_node_base<void *> *> {
    __tree_node_base<void *> __left_;
} __tree_end_node<std::__1::__tree_node_base<void *> *>;

typedef struct __tree_node_base<void *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > > {
    __tree_end_node<std::__1::__tree_node_base<void *> *> __value_;
} __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> >;

typedef struct __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > > {
    __tree_end_node<std::__1::__tree_node_base<void *> *> __begin_node_;
    __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > > __pair1_;
    __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> > __pair3_;
} __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > >;

typedef struct map<CCNode *, _ccColor4B, std::__1::less<CCNode *>, std::__1::allocator<std::__1::pair<CCNode *const, _ccColor4B> > > {
    __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > > __tree_;
} map<CCNode *, _ccColor4B, std::__1::less<CCNode *>, std::__1::allocator<std::__1::pair<CCNode *const, _ccColor4B> > >;

typedef struct __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> > {
    id __value_;
} __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> >;

typedef struct vector<CCMenu *, std::__1::allocator<CCMenu *> > {
    id __begin_;
    id __end_;
    __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> > __end_cap_;
} vector<CCMenu *, std::__1::allocator<CCMenu *> >;

typedef struct __compressed_pair<int *, std::__1::allocator<int> > {
    int __value_;
} __compressed_pair<int *, std::__1::allocator<int> >;

typedef struct vector<int, std::__1::allocator<int> > {
    int __begin_;
    int __end_;
    __compressed_pair<int *, std::__1::allocator<int> > __end_cap_;
} vector<int, std::__1::allocator<int> >;

typedef struct type {
    unsigned char __lx;
} type;

typedef struct __base<void ()> {
} // Error Processing Struct Fields

typedef struct __value_func<void ()> {
} // Error Processing Struct Fields

typedef struct function<void ()> {
    __value_func<void ()> __f_;
} function<void ()>;

typedef struct ConsentData {
    int type;
    int state;
    BOOL shouldAskConsent;
    BOOL consentIsGiven;
    BOOL readOnly;
} ConsentData;

typedef struct __long {
    char * __data_;
    NSUInteger __size_;
    NSUInteger __cap_;
} __long;

typedef struct __short {
    char __data_;
    ? ;
} __short;

typedef struct __raw {
    NSUInteger __words;
} __raw;

typedef struct __rep {
    unk ;
    __long __l;
    __short __s;
    __raw __r;
} __rep;

typedef struct __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> > {
    __rep __value_;
} __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >;

typedef struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > {
    __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> > __r_;
} basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > field0;
} map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > field0;
} map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > >;

typedef struct ConfigurationModel {
    map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > field0;
    map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > field1;
} ConfigurationModel;

typedef struct ConfiguratorListener {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::ads::ConfiguratorListener> {
} // Error Processing Struct Fields

typedef struct InterstitialsListener {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::ads::InterstitialsListener> {
} // Error Processing Struct Fields

typedef struct Placement {
} // Error Processing Struct Fields

typedef struct AdsManager {
    BOOL field0;
    BOOL field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    int field3;
    BOOL field4;
    shared_ptr<mc::ads::ConfiguratorListener> field5;
    shared_ptr<mc::ads::InterstitialsListener> field6;
    Placement field7;
} AdsManager;

typedef struct MCLibraHandler {
    int field0;
    function<void ()> field1;
} MCLibraHandler;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback> > > field0;
} map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > >;

typedef struct AlarmManager {
    map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > > field0;
    id field1;
} AlarmManager;

typedef struct EnvironmentManager {
} // Error Processing Struct Fields

typedef struct EnvironmentSelector {
    EnvironmentManager field0;
} EnvironmentSelector;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> > > > field0;
} map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > >;

typedef struct ServerConnection {
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field0;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    BOOL field3;
    BOOL field4;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field5;
    unsigned int field6;
    BOOL field7;
    BOOL field8;
    CGFloat field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > > field11;
    NSInteger field12;
    NSInteger field13;
    BOOL field14;
    BOOL field15;
    int field16;
    BOOL field17;
    BOOL field18;
    unsigned int field19;
} ServerConnection;

typedef struct __base<mc::Data (const std::__1::type_index &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const std::__1::type_index &)> {
    type field0;
    __base<mc::Data (const std::__1::type_index &)> field1;
} __value_func<mc::Data (const std::__1::type_index &)>;

typedef struct function<mc::Data (const std::__1::type_index &)> {
    __value_func<mc::Data (const std::__1::type_index &)> field0;
} function<mc::Data (const std::__1::type_index &)>;

typedef struct __base<mc::Data (const std::__1::type_index &, const mc::Any &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)> {
    type field0;
    __base<mc::Data (const std::__1::type_index &, const mc::Any &)> field1;
} __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)>;

typedef struct function<mc::Data (const std::__1::type_index &, const mc::Any &)> {
    __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)> field0;
} function<mc::Data (const std::__1::type_index &, const mc::Any &)>;

typedef struct __base<mc::Data (const mc::Any &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const mc::Any &)> {
    type field0;
    __base<mc::Data (const mc::Any &)> field1;
} __value_func<mc::Data (const mc::Any &)>;

typedef struct function<mc::Data (const mc::Any &)> {
    __value_func<mc::Data (const mc::Any &)> field0;
} function<mc::Data (const mc::Any &)>;

typedef struct __base<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
} // Error Processing Struct Fields

typedef struct __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
    type field0;
    __base<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field1;
} __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)>;

typedef struct function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
    __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field0;
} function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)>;

typedef struct __base<bool (const mc::Data &)> {
} // Error Processing Struct Fields

typedef struct __value_func<bool (const mc::Data &)> {
    type field0;
    __base<bool (const mc::Data &)> field1;
} __value_func<bool (const mc::Data &)>;

typedef struct function<bool (const mc::Data &)> {
    __value_func<bool (const mc::Data &)> field0;
} function<bool (const mc::Data &)>;

typedef struct __base<std::__1::type_index ()> {
} // Error Processing Struct Fields

typedef struct __value_func<std::__1::type_index ()> {
    type field0;
    __base<std::__1::type_index ()> field1;
} __value_func<std::__1::type_index ()>;

typedef struct function<std::__1::type_index ()> {
    __value_func<std::__1::type_index ()> field0;
} function<std::__1::type_index ()>;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > >;

typedef struct unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > {
    __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > field0;
} unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > >;

typedef struct _opaque_pthread_mutex_t {
    NSInteger __sig;
    char __opaque;
} _opaque_pthread_mutex_t;

typedef struct mutex {
    _opaque_pthread_mutex_t __m_;
} mutex;

typedef struct thread {
} // Error Processing Struct Fields

typedef struct vector<std::__1::thread, std::__1::allocator<std::__1::thread> > {
} // Error Processing Struct Fields

typedef struct TaskScheduler {
} // Error Processing Struct Fields

typedef struct TaskQueue {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::TaskQueue> {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Task> {
} // Error Processing Struct Fields

typedef struct __split_buffer<std::__1::shared_ptr<mc::Task> *, std::__1::allocator<std::__1::shared_ptr<mc::Task> *> > {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > >;

typedef struct deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > {
    __split_buffer<std::__1::shared_ptr<mc::Task> *, std::__1::allocator<std::__1::shared_ptr<mc::Task> *> > field0;
    NSUInteger field1;
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > field2;
} deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > >;

typedef struct Socket {
} // Error Processing Struct Fields

typedef struct __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> > {
    Socket field0;
} __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> >;

typedef struct unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> > {
    __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> > field0;
} unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> >;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > >;

typedef struct unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > > {
    __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > > field0;
} unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > >;

typedef struct NetworkCourier<std::__1::type_index> {
    unk field0;
    int field1;
    int field2;
    function<mc::Data (const std::__1::type_index &)> field3;
    function<mc::Data (const std::__1::type_index &, const mc::Any &)> field4;
    function<mc::Data (const mc::Any &)> field5;
    function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field6;
    function<bool (const mc::Data &)> field7;
    function<std::__1::type_index ()> field8;
    unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > field9;
    mutex field10;
    vector<std::__1::thread, std::__1::allocator<std::__1::thread> > field11;
    TaskScheduler field12;
    shared_ptr<mc::TaskQueue> field13;
    deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > field14;
    mutex field15;
    unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> > field16;
    mutex field17;
    int field18;
    int field19;
    BOOL field20;
    BOOL field21;
    unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > > field22;
    mutex field23;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > field24;
    mutex field25;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > field26;
    mutex field27;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > field28;
    mutex field29;
} NetworkCourier<std::__1::type_index>;

typedef struct __compressed_pair<ServerConnection *, std::__1::default_delete<ServerConnection> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<ServerConnection, std::__1::default_delete<ServerConnection> > {
    __compressed_pair<ServerConnection *, std::__1::default_delete<ServerConnection> > __ptr_;
} unique_ptr<ServerConnection, std::__1::default_delete<ServerConnection> >;

typedef struct __compressed_pair<AdsManager *, std::__1::default_delete<AdsManager> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<AdsManager, std::__1::default_delete<AdsManager> > {
    __compressed_pair<AdsManager *, std::__1::default_delete<AdsManager> > __ptr_;
} unique_ptr<AdsManager, std::__1::default_delete<AdsManager> >;

typedef struct __compressed_pair<MCLibraHandler *, std::__1::default_delete<MCLibraHandler> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<MCLibraHandler, std::__1::default_delete<MCLibraHandler> > {
    __compressed_pair<MCLibraHandler *, std::__1::default_delete<MCLibraHandler> > __ptr_;
} unique_ptr<MCLibraHandler, std::__1::default_delete<MCLibraHandler> >;

typedef struct __compressed_pair<AlarmManager *, std::__1::default_delete<AlarmManager> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<AlarmManager, std::__1::default_delete<AlarmManager> > {
    __compressed_pair<AlarmManager *, std::__1::default_delete<AlarmManager> > __ptr_;
} unique_ptr<AlarmManager, std::__1::default_delete<AlarmManager> >;

typedef struct __compressed_pair<EnvironmentSelector *, std::__1::default_delete<EnvironmentSelector> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<EnvironmentSelector, std::__1::default_delete<EnvironmentSelector> > {
    __compressed_pair<EnvironmentSelector *, std::__1::default_delete<EnvironmentSelector> > __ptr_;
} unique_ptr<EnvironmentSelector, std::__1::default_delete<EnvironmentSelector> >;

typedef struct __compressed_pair<mc::NetworkCourier<std::__1::type_index> *, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > {
} // Error Processing Struct Fields

typedef struct unique_ptr<mc::NetworkCourier<std::__1::type_index>, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > {
    __compressed_pair<mc::NetworkCourier<std::__1::type_index> *, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > __ptr_;
} unique_ptr<mc::NetworkCourier<std::__1::type_index>, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > field0;
} map<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > >;

typedef struct vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > {
} // Error Processing Struct Fields

typedef struct pair<std::__1::basic_string<char>, int> {
} // Error Processing Struct Fields

typedef struct vector<std::__1::pair<std::__1::basic_string<char>, int>, std::__1::allocator<std::__1::pair<std::__1::basic_string<char>, int> > > {
} // Error Processing Struct Fields

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, int> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, int, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, int> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, int> > > __tree_;
} map<std::__1::basic_string<char>, int, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, int> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > __tree_;
} map<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > >;

typedef struct __compressed_pair<float *, std::__1::allocator<float> > {
    float __value_;
} __compressed_pair<float *, std::__1::allocator<float> >;

typedef struct vector<float, std::__1::allocator<float> > {
    float __begin_;
    float __end_;
    __compressed_pair<float *, std::__1::allocator<float> > __end_cap_;
} vector<float, std::__1::allocator<float> >;

typedef struct MCGoliath {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::MCGoliath> {
} // Error Processing Struct Fields

typedef struct MCGoliathWrapper {
    unk field0;
    shared_ptr<mc::MCGoliath> field1;
} MCGoliathWrapper;

typedef struct LoginInfo {
} // Error Processing Struct Fields

typedef struct AnyKeeperBase {
} // Error Processing Struct Fields

typedef struct __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> > {
    AnyKeeperBase __value_;
} __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> >;

typedef struct unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> > {
    __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> > __ptr_;
} unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> >;

typedef struct Any {
    unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> > _keeper;
} Any;

typedef struct __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> > {
    unsigned int __value_;
} __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> >;

typedef struct __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> > {
    unsigned int __first_;
    unsigned int __begin_;
    unsigned int __end_;
    __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> > __end_cap_;
} __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> >;

typedef struct __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> >;

typedef struct deque<ApplicationState, std::__1::allocator<ApplicationState> > {
    __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> > __map_;
    NSUInteger __start_;
    __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> > __size_;
} deque<ApplicationState, std::__1::allocator<ApplicationState> >;

typedef struct __SecTrust {
} // Error Processing Struct Fields

typedef struct __SecCertificate {
} // Error Processing Struct Fields

typedef struct CLSMachOFile {
    int fd;
    NSUInteger mappedSize;
    void mappedFile;
} CLSMachOFile;

typedef struct CLSMachOSlice {
    void startAddress;
    int cputype;
    int cpusubtype;
} CLSMachOSlice;

typedef struct GULReachabilityApi {
    unk field0;
    unk field1;
    unk field2;
    unk field3;
    unk field4;
} GULReachabilityApi;

typedef struct __SCNetworkReachability {
} // Error Processing Struct Fields

typedef struct __CFString {
} // Error Processing Struct Fields

typedef struct CGColorSpace {
} // Error Processing Struct Fields

typedef struct gzFile_s {
    unsigned int field0;
    char * field1;
    NSInteger field2;
} gzFile_s;

typedef struct sqlite3 {
} // Error Processing Struct Fields

typedef struct sqlite3_stmt {
} // Error Processing Struct Fields

typedef struct __CFRunLoopTimer {
} // Error Processing Struct Fields

typedef struct __CFNetService {
} // Error Processing Struct Fields

typedef struct _DNSServiceRef_t {
} // Error Processing Struct Fields

typedef struct __CFSocket {
} // Error Processing Struct Fields

typedef struct __CFRunLoopSource {
} // Error Processing Struct Fields

typedef struct __CFHTTPMessage {
} // Error Processing Struct Fields

typedef struct internal_state {
} // Error Processing Struct Fields

typedef struct z_stream_s {
    char * next_in;
    unsigned int avail_in;
    NSUInteger total_in;
    char * next_out;
    unsigned int avail_out;
    NSUInteger total_out;
    char * msg;
    internal_state state;
    unk zalloc;
    unk zfree;
    void opaque;
    int data_type;
    NSUInteger adler;
    NSUInteger reserved;
} z_stream_s;

typedef struct __sbuf {
    char * field0;
    int field1;
} __sbuf;

typedef struct __sFILEX {
} // Error Processing Struct Fields

typedef struct __sFILE {
    char * field0;
    int field1;
    int field2;
    short field3;
    short field4;
    __sbuf field5;
    int field6;
    void field7;
    unk field8;
    unk field9;
    unk field10;
    unk field11;
    __sbuf field12;
    __sFILEX field13;
    int field14;
    unsigned char field15;
    unsigned char field16;
    __sbuf field17;
    int field18;
    NSInteger field19;
} __sFILE;

typedef struct Patcher {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Patcher> {
} // Error Processing Struct Fields

typedef struct MCPatcherDelegate {
} // Error Processing Struct Fields

typedef struct shared_ptr<MCPatcherDelegate> {
} // Error Processing Struct Fields

typedef struct kmMat4 {
    float mat;
} kmMat4;

typedef struct _ccVertex3F {
    float x;
    float y;
    float z;
} _ccVertex3F;

typedef struct _ccTex2F {
    float u;
    float v;
} _ccTex2F;

typedef struct _ccV3F_C4B_T2F {
    _ccVertex3F vertices;
    _ccColor4B colors;
    _ccTex2F texCoords;
} _ccV3F_C4B_T2F;

typedef struct _ccV3F_C4B_T2F_Quad {
    _ccV3F_C4B_T2F tl;
    _ccV3F_C4B_T2F bl;
    _ccV3F_C4B_T2F tr;
    _ccV3F_C4B_T2F br;
} _ccV3F_C4B_T2F_Quad;

typedef struct anim_layout {
} // Error Processing Struct Fields

typedef struct vsz_layout {
    unsigned int field0;
    anim_layout field1;
    unsigned int field2;
    unsigned int field3;
    float field4;
    unsigned int field5;
    unsigned short field6;
    unsigned int field7;
    float field8;
    float field9;
    float field10;
    char * field11;
} vsz_layout;

typedef struct Value {
    NSInteger field0;
    int field1;
    BOOL field2;
} Value;

typedef struct ShaderUniform {
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field0;
    int field1;
    unsigned int field2;
} ShaderUniform;

typedef struct spAnimationState {
} // Error Processing Struct Fields

typedef struct spTrackEntry {
} // Error Processing Struct Fields

typedef struct _ccColor4F {
    float r;
    float g;
    float b;
    float a;
} _ccColor4F;

typedef struct _ccVertex2F {
    float x;
    float y;
} _ccVertex2F;

typedef struct _ccV2F_C4B_T2F {
    _ccVertex2F field0;
    _ccColor4B field1;
    _ccTex2F field2;
} _ccV2F_C4B_T2F;

typedef struct _ccFontShadow {
    BOOL m_shadowEnabled;
    CGSize m_shadowOffset;
    float m_shadowBlur;
    float m_shadowOpacity;
    _ccColorThreeB m_shadowColor;
} _ccFontShadow;

typedef struct _ccFontStroke {
    BOOL m_strokeEnabled;
    _ccColorThreeB m_strokeColor;
    float m_strokeSize;
} _ccFontStroke;

typedef struct _BMFontDef {
    unsigned short field0;
    CGRect field1;
    short field2;
    short field3;
    short field4;
} _BMFontDef;

typedef struct UT_hash_table {
} // Error Processing Struct Fields

typedef struct UT_hash_handle {
} // Error Processing Struct Fields

typedef struct _FontDefHashElement {
    NSUInteger field0;
    _BMFontDef field1;
    UT_hash_handle field2;
} _FontDefHashElement;

typedef struct _BMFontPadding {
    int left;
    int top;
    int right;
    int bottom;
} _BMFontPadding;

typedef struct _KerningHashElement {
} // Error Processing Struct Fields

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > field0;
} map<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > field0;
} map<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > >;

typedef struct __tree<std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderUniform *> > > {
} // Error Processing Struct Fields

typedef struct map<int, mc::Renderer::ShaderUniform *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderUniform *> > > {
    __tree<std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderUniform *> > > field0;
} map<int, mc::Renderer::ShaderUniform *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderUniform *> > >;

typedef struct __tree<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *> > > {
} // Error Processing Struct Fields

typedef struct map<int, mc::Renderer::ShaderAttribute *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderAttribute *> > > {
    __tree<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *> > > field0;
} map<int, mc::Renderer::ShaderAttribute *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderAttribute *> > >;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > >;

typedef struct StringMap {
    __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > > field0;
} StringMap;

typedef struct sCCParticle {
    CGPoint field0;
    CGPoint field1;
    _ccColor4F field2;
    _ccColor4F field3;
    float field4;
    float field5;
    float field6;
    float field7;
    CGFloat field8;
    NSUInteger field9;
    unk field10;
    ? field11;
    ? field12;
} sCCParticle;

typedef struct ccArray {
    NSUInteger field0;
    NSUInteger field1;
    id field2;
} ccArray;

typedef struct sImageTGA {
    int field0;
    unsigned char field1;
    unsigned char field2;
    short field3;
    short field4;
    char * field5;
    int field6;
} sImageTGA;

typedef struct STexturedQuad {
} // Error Processing Struct Fields

typedef struct vector<mc::CTextRenderer_Harfbuzz::STexturedQuad, std::__1::allocator<mc::CTextRenderer_Harfbuzz::STexturedQuad> > {
} // Error Processing Struct Fields

typedef struct vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> > {
} // Error Processing Struct Fields

typedef struct vector<std::__1::vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> >, std::__1::allocator<std::__1::vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> > > > {
} // Error Processing Struct Fields

typedef struct TextRenderJobData {
} // Error Processing Struct Fields

typedef struct vector<mc::Renderer::Mesh, std::__1::allocator<mc::Renderer::Mesh> > {
} // Error Processing Struct Fields

typedef struct CGImage {
} // Error Processing Struct Fields

typedef struct _hashElement {
} // Error Processing Struct Fields

typedef struct _ccBezierConfig {
    CGPoint endPosition;
    CGPoint controlPoint_1;
    CGPoint controlPoint_2;
} _ccBezierConfig;

typedef struct linear_congruential_engine<unsigned int, 48271, 0, 2147483647> {
    unsigned int __x_;
} linear_congruential_engine<unsigned int, 48271, 0, 2147483647>;

typedef struct RandomGenerator<std::__1::linear_congruential_engine<unsigned int, 48271, 0, 2147483647> > {
    linear_congruential_engine<unsigned int, 48271, 0, 2147483647> _generator;
} RandomGenerator<std::__1::linear_congruential_engine<unsigned int, 48271, 0, 2147483647> >;

typedef struct _ccQuad3 {
    _ccVertex3F field0;
    _ccVertex3F field1;
    _ccVertex3F field2;
    _ccVertex3F field3;
} _ccQuad3;

typedef struct MCTextRendererProperties {
    int field0;
    int field1;
    int field2;
    int field3;
    ? field4;
    ? field5;
    ? field6;
    ? field7;
    float field8;
    BOOL field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    ? field11;
    float field12;
    float field13;
    void field14;
} MCTextRendererProperties;

typedef struct __base<void (void **, int *, int *)> {
} // Error Processing Struct Fields

typedef struct __value_func<void (void **, int *, int *)> {
    type field0;
    __base<void (void **, int *, int *)> field1;
} __value_func<void (void **, int *, int *)>;

typedef struct function<void (void **, int *, int *)> {
    __value_func<void (void **, int *, int *)> field0;
} function<void (void **, int *, int *)>;

typedef struct _ccTexParams {
    int field0;
    int field1;
    int field2;
    int field3;
} _ccTexParams;

typedef struct timeval {
    NSInteger tv_sec;
    int tv_usec;
} timeval;

typedef struct _hashUniformEntry {
} // Error Processing Struct Fields

typedef struct ccTouchHandlerHelperData {
    SEL touchesSel;
    SEL touchSel;
    int type;
} ccTouchHandlerHelperData;

typedef struct _hashSelectorEntry {
} // Error Processing Struct Fields

typedef struct _listEntry {
} // Error Processing Struct Fields

typedef struct _hashUpdateEntry {
} // Error Processing Struct Fields

typedef struct ALCcontext_struct {
} // Error Processing Struct Fields

typedef struct _bufferInfo {
    unsigned int field0;
    int field1;
    void field2;
    int field3;
    int field4;
    int field5;
} _bufferInfo;

typedef struct _sourceInfo {
    BOOL field0;
    unsigned int field1;
    unsigned int field2;
} _sourceInfo;

typedef struct _sourceGroup {
    int field0;
    int field1;
    int field2;
    BOOL field3;
    BOOL field4;
    int field5;
} _sourceGroup;

typedef struct spSkeletonData {
} // Error Processing Struct Fields

typedef struct spBone {
} // Error Processing Struct Fields

typedef struct spSkeleton {
} // Error Processing Struct Fields

typedef struct spBoneData {
} // Error Processing Struct Fields

typedef struct spAtlasPage {
} // Error Processing Struct Fields

typedef struct spAtlasRegion {
} // Error Processing Struct Fields

typedef struct spAtlas {
    spAtlasPage field0;
    spAtlasRegion field1;
    void field2;
} spAtlas;

typedef struct spAttachment {
    char * field0;
    int field1;
    void field2;
} spAttachment;

typedef struct spRegionAttachment {
    spAttachment field0;
    char * field1;
    float field2;
    float field3;
    float field4;
    float field5;
    float field6;
    float field7;
    float field8;
    float field9;
    float field10;
    float field11;
    float field12;
    void field13;
    int field14;
    int field15;
    int field16;
    int field17;
    int field18;
    int field19;
    float field20;
    float field21;
} spRegionAttachment;

typedef struct spMeshAttachment {
    spAttachment field0;
    char * field1;
    int field2;
    float field3;
    int field4;
    float field5;
    float field6;
    int field7;
    int field8;
    float field9;
    float field10;
    float field11;
    float field12;
    void field13;
    int field14;
    int field15;
    int field16;
    int field17;
    int field18;
    int field19;
    float field20;
    float field21;
    float field22;
    float field23;
    int field24;
    int field25;
    int field26;
    float field27;
    float field28;
} spMeshAttachment;

typedef struct spWeightedMeshAttachment {
    spAttachment field0;
    char * field1;
    int field2;
    int field3;
    int field4;
    float field5;
    int field6;
    int field7;
    int field8;
    float field9;
    float field10;
    int field11;
    float field12;
    float field13;
    float field14;
    float field15;
    void field16;
    int field17;
    int field18;
    int field19;
    int field20;
    int field21;
    int field22;
    float field23;
    float field24;
    float field25;
    float field26;
    int field27;
    int field28;
    int field29;
    float field30;
    float field31;
} spWeightedMeshAttachment;

typedef struct spSlotData {
} // Error Processing Struct Fields

typedef struct spSlot {
} // Error Processing Struct Fields

typedef struct spAnimationStateData {
} // Error Processing Struct Fields

typedef struct spEventData {
} // Error Processing Struct Fields

typedef struct spEvent {
    spEventData field0;
    float field1;
    int field2;
    float field3;
    char * field4;
} spEvent;

typedef struct Data {
    unk field0;
    char * field1;
    NSUInteger field2;
    BOOL field3;
} Data;

typedef struct Postman {
} // Error Processing Struct Fields

typedef struct NewsfeedMessage {
    Postman field0;
    BOOL field1;
    int field2;
    int field3;
    int field4;
    BOOL field5;
    BOOL field6;
    int field7;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field8;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field11;
} NewsfeedMessage;

typedef struct vector<mc::NewsfeedMessage, std::__1::allocator<mc::NewsfeedMessage> > {
} // Error Processing Struct Fields

typedef struct NewsfeedMessageViewInfo {
    id field0;
    id field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    int field3;
    BOOL field4;
} NewsfeedMessageViewInfo;

typedef struct vector<mc::NewsfeedMessageViewInfo, std::__1::allocator<mc::NewsfeedMessageViewInfo> > {
} // Error Processing Struct Fields

typedef struct __asl_object_s {
} // Error Processing Struct Fields

typedef struct UIColor {
    Class field0;
} UIColor;

typedef struct __CFRunLoop {
} // Error Processing Struct Fields

typedef struct _RNCryptorKeyDerivationSettings {
    NSUInteger keySize;
    NSUInteger saltSize;
    unsigned int PBKDFAlgorithm;
    unsigned int PRF;
    unsigned int rounds;
    BOOL hasV2Password;
} _RNCryptorKeyDerivationSettings;

typedef struct _RNCryptorSettings {
    unsigned int algorithm;
    NSUInteger blockSize;
    NSUInteger IVSize;
    unsigned int options;
    unsigned int HMACAlgorithm;
    NSUInteger HMACLength;
    _RNCryptorKeyDerivationSettings keySettings;
    _RNCryptorKeyDerivationSettings HMACKeySettings;
} _RNCryptorSettings;

typedef struct _CCCryptor {
} // Error Processing Struct Fields

typedef struct sockaddr {
    unsigned char field0;
    unsigned char field1;
    char field2;
} sockaddr;

typedef struct Listener {
} // Error Processing Struct Fields

typedef struct weak_ptr<mc::ads::MoPubInterstitialWrapper::Listener> {
} // Error Processing Struct Fields

typedef struct MoPubInterstitialWrapperImplIos {
    unk field0;
    weak_ptr<mc::ads::MoPubInterstitialWrapper::Listener> field1;
    id field2;
    id field3;
} MoPubInterstitialWrapperImplIos;

typedef struct weak_ptr<mc::MCGoliath> {
} // Error Processing Struct Fields

typedef struct Matrix {
    float field0;
} Matrix;

typedef struct ICMPHeader {
    unsigned char field0;
    unsigned char field1;
    unsigned short field2;
    unsigned short field3;
    unsigned short field4;
} ICMPHeader;

typedef struct __CFHost {
} // Error Processing Struct Fields

typedef struct atomic_flag {
    uint8_t _Value;
    BOOL field1;
} atomic_flag;

typedef struct CGVector {
    CGFloat dx;
    CGFloat dy;
} CGVector;

typedef struct CC_MD5state_st {
    unsigned int A;
    unsigned int B;
    unsigned int C;
    unsigned int D;
    unsigned int Nl;
    unsigned int Nh;
    unsigned int data;
    int num;
} CC_MD5state_st;

typedef struct __CFBinaryHeap {
} // Error Processing Struct Fields

typedef struct TJPlacementListener {
    unk field0;
} TJPlacementListener;

typedef struct CGImageSource {
} // Error Processing Struct Fields

typedef struct ntpTimestamp {
    unsigned int fullSeconds;
    unsigned int partSeconds;
} ntpTimestamp;

typedef struct TJConnectListener {
    unk field0;
} TJConnectListener;

typedef struct TJEarnedCurrencyListener {
    unk field0;
} TJEarnedCurrencyListener;

typedef struct TJVideoListener {
    unk field0;
} TJVideoListener;

typedef struct _FloatAndUnit {
    CGFloat value;
    NSInteger unit;
} _FloatAndUnit;

typedef struct HttpConnectionApple {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::HttpConnectionApple> {
} // Error Processing Struct Fields

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > __data_;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> __value_;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > __ptr_;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> > {
    float __value_;
} __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > __bucket_list_;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > > __p1_;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> > __p2_;
    __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> > __p3_;
} __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > >;

typedef struct unordered_map<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple>, std::__1::hash<unsigned long>, std::__1::equal_to<unsigned long>, std::__1::allocator<std::__1::pair<const unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > {
    __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > __table_;
} unordered_map<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple>, std::__1::hash<unsigned long>, std::__1::equal_to<unsigned long>, std::__1::allocator<std::__1::pair<const unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > >;

typedef struct AlertViewDelegate {
    function<void ()> willAppearCallback;
    function<void ()> didAppearCallback;
    function<void ()> willDisappearCallback;
    function<void ()> didDisappearCallback;
} AlertViewDelegate;

typedef struct ButtonConfig {
} // Error Processing Struct Fields

typedef struct vector<mc::AlertPopup::ButtonConfig, std::__1::allocator<mc::AlertPopup::ButtonConfig> > {
} // Error Processing Struct Fields

typedef struct StyleConfig {
    CGFloat alertViewWidth;
    CGFloat titleFontSize;
    CGFloat messageFontSize;
    CGFloat buttonFontSize;
    CGFloat buttonHeight;
} StyleConfig;

typedef struct CATransform3D {
    CGFloat field0;
    CGFloat field1;
    CGFloat field2;
    CGFloat field3;
    CGFloat field4;
    CGFloat field5;
    CGFloat field6;
    CGFloat field7;
    CGFloat field8;
    CGFloat field9;
    CGFloat field10;
    CGFloat field11;
    CGFloat field12;
    CGFloat field13;
    CGFloat field14;
    CGFloat field15;
} CATransform3D;

typedef struct recursive_mutex {
    _opaque_pthread_mutex_t __m_;
} recursive_mutex;

typedef struct FBAdDeviceBatteryInfo {
    NSInteger field0;
    CGFloat field1;
} FBAdDeviceBatteryInfo;

typedef struct NSMutableDictionary {
    Class field0;
} NSMutableDictionary;

typedef struct CGColor {
} // Error Processing Struct Fields

typedef struct AQBufferParameters {
    unsigned int bufferSize;
    unsigned int packetCount;
} AQBufferParameters;

typedef struct AQBufferState {
} // Error Processing Struct Fields

typedef struct OpaqueCMClock {
} // Error Processing Struct Fields

typedef struct OpaqueAudioQueue {
} // Error Processing Struct Fields

typedef struct SMPTETime {
    short field0;
    short field1;
    unsigned int field2;
    unsigned int field3;
    unsigned int field4;
    short field5;
    short field6;
    short field7;
    short field8;
} SMPTETime;

typedef struct AudioTimeStamp {
    CGFloat field0;
    NSUInteger field1;
    CGFloat field2;
    NSUInteger field3;
    SMPTETime field4;
    unsigned int field5;
    unsigned int field6;
} AudioTimeStamp;

typedef struct AudioQueueLevelMeterState {
    float field0;
    float field1;
} AudioQueueLevelMeterState;

typedef struct OpaqueAudioQueueTimeline {
} // Error Processing Struct Fields

typedef struct __CVPixelBufferPool {
} // Error Processing Struct Fields

typedef struct __CVOpenGLESTextureCache {
} // Error Processing Struct Fields

typedef struct __CVMetalTextureCache {
} // Error Processing Struct Fields

typedef struct OpaqueCMBlockBuffer {
} // Error Processing Struct Fields

typedef struct AudioBuffer {
    unsigned int mNumberChannels;
    unsigned int mDataByteSize;
    void mData;
} AudioBuffer;

typedef struct __tree<std::__1::__value_type<FBDataSegment, NSData *>, std::__1::__map_value_compare<FBDataSegment, std::__1::__value_type<FBDataSegment, NSData *>, cmpOfDataSegment, true>, std::__1::allocator<std::__1::__value_type<FBDataSegment, NSData *> > > {
} // Error Processing Struct Fields

typedef struct map<FBDataSegment, NSData *, cmpOfDataSegment, std::__1::allocator<std::__1::pair<const FBDataSegment, NSData *> > > {
    __tree<std::__1::__value_type<FBDataSegment, NSData *>, std::__1::__map_value_compare<FBDataSegment, std::__1::__value_type<FBDataSegment, NSData *>, cmpOfDataSegment, true>, std::__1::allocator<std::__1::__value_type<FBDataSegment, NSData *> > > __tree_;
} map<FBDataSegment, NSData *, cmpOfDataSegment, std::__1::allocator<std::__1::pair<const FBDataSegment, NSData *> > >;

typedef struct FNFMP4TrakAtomForSeek {
} // Error Processing Struct Fields

typedef struct vector<FNFMP4TrakAtomForSeek, std::__1::allocator<FNFMP4TrakAtomForSeek> > {
} // Error Processing Struct Fields

typedef struct FNFMP4MvhdAtom {
    unsigned int timescale;
    unsigned int duration;
    float rotationAngle;
} FNFMP4MvhdAtom;

typedef struct FNFMP4MoovAtomCompressed {
    vector<FNFMP4TrakAtomForSeek, std::__1::allocator<FNFMP4TrakAtomForSeek> > trakAtoms;
    FNFMP4MvhdAtom mvhdAtom;
} FNFMP4MoovAtomCompressed;

typedef struct FNFMp4FrameMetadataCompressor {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> > {
    unsigned int __value_;
} __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> >;

typedef struct vector<unsigned int, std::__1::allocator<unsigned int> > {
    unsigned int __begin_;
    unsigned int __end_;
    __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> > __end_cap_;
} vector<unsigned int, std::__1::allocator<unsigned int> >;

typedef struct pair<double, double> {
} // Error Processing Struct Fields

typedef struct vector<std::__1::pair<double, double>, std::__1::allocator<std::__1::pair<double, double> > > {
} // Error Processing Struct Fields

typedef struct _xmlNode {
} // Error Processing Struct Fields

typedef struct __base<void (_xmlNode *)> {
} // Error Processing Struct Fields

typedef struct function<void (_xmlNode *)> {
    type field0;
    __base<void (_xmlNode *)> field1;
} function<void (_xmlNode *)>;

typedef struct node {
    _xmlNode field0;
    function<void (_xmlNode *)> field1;
} node;

typedef struct OpaqueVTDecompressionSession {
} // Error Processing Struct Fields

