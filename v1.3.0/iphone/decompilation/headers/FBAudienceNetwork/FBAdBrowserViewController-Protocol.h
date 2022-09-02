// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdBrowserViewController

@property (retain, nonatomic) UIView *webView;
@property (retain, nonatomic) UIBarButtonItem *backButton;
@property (retain, nonatomic) UIBarButtonItem *forwardButton;
@property (retain, nonatomic) UIBarButtonItem *refreshButton;
@property (retain, nonatomic) UIBarButtonItem *spinnerButton;
@property (retain, nonatomic) UIToolbar *toolBar;
@property (weak, nonatomic) NSObject<FBAdSafariViewControllerDelegate> *delegate;
@property (nonatomic, getter=isStatusBarHidden) BOOL statusBarHidden;

-(void)backButtonClicked:(id)arg0 ;
-(void)forwardButtonClicked:(id)arg0 ;
-(void)refreshButtonClicked:(id)arg0 ;
-(void)doneButtonClicked:(id)arg0 ;
-(void)clearContent;
-(void)loadURL:(id)arg0 ;
-(id)webView;
-(void)setWebView:(id)arg0 ;
-(id)backButton;
-(void)setBackButton:(id)arg0 ;
-(id)forwardButton;
-(void)setForwardButton:(id)arg0 ;
-(id)refreshButton;
-(void)setRefreshButton:(id)arg0 ;
-(id)spinnerButton;
-(void)setSpinnerButton:(id)arg0 ;
-(id)toolBar;
-(void)setToolBar:(id)arg0 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;
-(BOOL)isStatusBarHidden;
-(void)setStatusBarHidden:(BOOL)arg0 ;

@end

