// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCMenuStateManagerDelegate


-(id)createMenuState:(NSUInteger)arg0 ;
-(void)destroyMenuState:(id)arg0 ;

@optional
-(void)willEnterState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(void)didEnterState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(void)willLeaveState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)didLeaveState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)willRefreshState:(NSUInteger)arg0 ;
-(void)didRefreshState:(NSUInteger)arg0 ;
@end

