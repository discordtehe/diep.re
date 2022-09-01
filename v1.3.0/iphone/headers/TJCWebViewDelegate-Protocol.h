// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol TJCWebViewDelegate


-(id)webViewController;

@optional
-(void)showURLFullScreen:(id)arg0 sourceView:(id)arg1 ;
-(BOOL)shouldStartDecidePolicy:(id)arg0 navigationType:(NSInteger)arg1 ;
-(void)didStartNavigation;
-(void)failLoadOrNavigationWithError:(id)arg0 ;
-(void)finishLoadOrNavigation;
@end

