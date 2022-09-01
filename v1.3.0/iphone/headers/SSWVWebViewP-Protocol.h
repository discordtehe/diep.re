// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SSWVWebViewP

@property (weak) NSObject<SSWVWebViewDelegate> *webViewDelegate;
@property (readonly, nonatomic) BOOL isLoading;
@property (readonly, nonatomic) BOOL canGoBack;
@property (readonly, nonatomic) BOOL canGoForward;
@property (retain, nonatomic) NSArray *respondingFrames;
@property (nonatomic) CGRect frameForCloseButton;

-(Class)webViewClass;
-(id)view;
-(id)scrollView;
-(void)evaluateJavaScript:(id)arg0 ;
-(void)loadRequest:(id)arg0 ;
-(void)loadFileRequest:(id)arg0 allowingReadAccessToURL:(id)arg1 ;
-(void)stopLoading;
-(void)reload;
-(void)goBack;
-(void)goForward;
-(void)loadHTMLContentString:(id)arg0 baseURL:(id)arg1 ;
-(void)allowFileAccessFromFileURLs:(BOOL)arg0 ;
-(id)webViewDelegate;
-(void)setWebViewDelegate:(id)arg0 ;
-(BOOL)isLoading;
-(BOOL)canGoBack;
-(BOOL)canGoForward;
-(id)respondingFrames;
-(void)setRespondingFrames:(id)arg0 ;
-(struct CGRect )frameForCloseButton;
-(void)setFrameForCloseButton:(struct CGRect )arg0 ;

@end

