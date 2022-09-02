// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMNODERGBA_H
#define MCMENUITEMNODERGBA_H



@class MCMenuItemNodeRGBAStatic;

@interface MCMenuItemNodeRGBA : MCMenuItemNodeRGBAStatic



-(void)setNormalNode:(id)arg0 removeExisting:(BOOL)arg1 ;
-(void)setSelectedNode:(id)arg0 removeExisting:(BOOL)arg1 ;
-(void)setDisabledNode:(id)arg0 removeExisting:(BOOL)arg1 ;
-(struct pair<CGPoint, CGPoint> )calculateAreaOfNode:(id)arg0 ;
-(void)centerChild:(id)arg0 inArea:(struct pair<CGPoint, CGPoint> )arg1 ;
-(void)addPickingAreas:(id)arg0 ;


@end


#endif