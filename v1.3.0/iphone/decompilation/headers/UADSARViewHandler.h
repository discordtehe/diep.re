// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSARVIEWHANDLER_H
#define UADSARVIEWHANDLER_H



@class UADSAdUnitViewHandler;
@class UADSARView;

@interface UADSARViewHandler : UADSAdUnitViewHandler

@property (retain, nonatomic) UADSARView *arView; // ivar: _arView


-(BOOL)create:(id)arg0 ;
-(BOOL)destroy;
-(id)getView;
-(void)viewDidLoad:(id)arg0 ;
-(void)viewDidAppear:(id)arg0 animated:(BOOL)arg1 ;
-(void)viewWillAppear:(id)arg0 animated:(BOOL)arg1 ;
-(void)viewWillDisappear:(id)arg0 animated:(BOOL)arg1 ;
-(void)viewDidDisappear:(id)arg0 animated:(BOOL)arg1 ;


@end


#endif