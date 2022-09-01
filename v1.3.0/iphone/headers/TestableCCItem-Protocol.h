// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol TestableCCItem


-(void)setID:(id)arg0 ;
-(void)setID:(id)arg0 context:(id)arg1 ;
-(id)uniqueID;
-(id)context;
-(BOOL)simulateTouch;
-(BOOL)simulateRelease;
-(BOOL)simulateDrag:(float)arg0 ;
-(BOOL)simulateDragToTag:(id)arg0 ;
-(int)countSubitems;

@optional
-(void)removeID;
-(void)removeChildrenIDs;
-(void)removeSelfAndChildrensIDs;
@end

