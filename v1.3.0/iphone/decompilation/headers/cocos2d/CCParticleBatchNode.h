// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPARTICLEBATCHNODE_H
#define CCPARTICLEBATCHNODE_H


#import <Foundation/Foundation.h>

@class CCNode;
@class CCTextureAtlas;
@protocol CCTextureProtocol;

@interface CCParticleBatchNode : CCNode <CCTextureProtocol>



@property (retain, nonatomic) CCTextureAtlas *textureAtlas; // ivar: _textureAtlas
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;
-(id)initWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
-(void)dealloc;
-(void)visit;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(NSUInteger)addChildHelper:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)reorderChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)getCurrentIndex:(*NSUInteger)arg0 newIndex:(*NSUInteger)arg1 forChild:(id)arg2 z:(NSInteger)arg3 ;
-(NSUInteger)searchNewPositionInChildrenForZ:(NSInteger)arg0 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeChildAtIndex:(NSUInteger)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)draw;
-(void)increaseAtlasCapacityTo:(NSUInteger)arg0 ;
-(void)disableParticle:(NSUInteger)arg0 ;
-(void)insertChild:(id)arg0 inAtlasAtIndex:(NSUInteger)arg1 ;
-(void)updateAllAtlasIndexes;
-(void)updateBlendFunc;
-(void)setTexture:(id)arg0 ;
-(id)texture;
+(id)batchNodeWithTexture:(id)arg0 ;
+(id)batchNodeWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;
+(id)batchNodeWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
+(id)batchNodeWithFile:(id)arg0 ;


@end


#endif