// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBREADER_H
#define CCBREADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCNode;
@class CCBAnimationManager;

@interface CCBReader : NSObject {
    BOOL jsControlled;
    NSData *data;
    char * bytes;
    int currentByte;
    int currentBit;
    float pointScale;
    NSString *SBVersion;
    NSString *SBBuild;
    int ccbVersion;
    NSMutableArray *stringCache;
    NSMutableSet *loadedSpriteSheets;
    id *owner;
    NSMutableDictionary *actionManagers;
    NSMutableSet *animatedProps;
    NSMutableDictionary *nodeMapping;
    NSMutableArray *postDeserializationUUIDFixup;
}


@property (readonly, nonatomic) NSMutableArray *ownerOutletNames; // ivar: ownerOutletNames
@property (readonly, nonatomic) NSMutableArray *ownerOutletNodes; // ivar: ownerOutletNodes
@property (readonly, nonatomic) NSMutableArray *ownerCallbackNames; // ivar: ownerCallbackNames
@property (readonly, nonatomic) NSMutableArray *ownerCallbackNodes; // ivar: ownerCallbackNodes
@property (readonly, nonatomic) NSMutableArray *nodesWithAnimationManagers; // ivar: nodesWithAnimationManagers
@property (readonly, nonatomic) NSMutableArray *animationManagersForNodes; // ivar: animationManagersForNodes
@property (nonatomic) NSMutableDictionary *animationManagers; // ivar: _animationManagers
@property (weak, nonatomic) CCNode *absoluteRootNode; // ivar: _absoluteRootNode
@property (nonatomic) BOOL skipDidLoadCall; // ivar: _skipDidLoadCall
@property (retain, nonatomic) CCBAnimationManager *actionManager; // ivar: actionManager


-(id)init;
-(void)dealloc;
-(BOOL)getBit;
-(void)alignBits;
-(int)readIntWithSignOLD:(BOOL)arg0 ;
-(float)readFloat;
-(id)readCachedString;
-(BOOL)isPropertyAllowed:(id)arg0 ;
-(float)resolutionScale;
-(void)readPropertyForNode:(id)arg0 parent:(id)arg1 isExtraProp:(BOOL)arg2 ;
-(void)calculateAndSetRelativePosition:(id)arg0 x:(float)arg1 y:(float)arg2 xUnit:(int)arg3 yUnit:(int)arg4 corner:(int)arg5 name:(id)arg6 parentContentSize:(struct CGSize )arg7 ;
-(id)calculatePropertyTypeSize:(float)arg0 h:(float)arg1 xUnit:(int)arg2 yUnit:(int)arg3 parentContentSize:(struct CGSize )arg4 ;
-(float)calculateScale:(float)arg0 withType:(int)arg1 ;
-(id)calculateAndSetSpriteFrame:(id)arg0 spriteSheet:(id)arg1 node:(id)arg2 name:(*id)arg3 chunks:(id)arg4 ;
-(id)readKeyframeOfType:(int)arg0 name:(id)arg1 ;
-(void)readEffects;
-(void)didLoadFromCCB;
-(void)didLoadFromCCBAfterChildren;
-(id)readNodeGraphParent:(id)arg0 ;
-(BOOL)readSequences;
-(BOOL)readCallbackKeyframesForSeq:(id)arg0 ;
-(BOOL)readSoundKeyframesForSeq:(id)arg0 ;
-(BOOL)readStringCache;
-(BOOL)readHeader;
-(void)cleanUpNodeGraph:(id)arg0 ;
-(id)readFileWithCleanUp:(BOOL)arg0 actionManagers:(id)arg1 ;
-(id)nodeGraphFromData:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
-(id)nodeGraphFromData:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 pointScale:(float)arg3 ;
-(id)callCodeGenerationSelector:(SEL)arg0 pScale:(float)arg1 owner:(id)arg2 parentSize:(struct CGSize )arg3 ccbName:(id)arg4 ;
-(id)loadCCBFromFile:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 pack:(id)arg3 ;
-(id)nodeGraphFromFile:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
-(id)nodeGraphFromFile:(id)arg0 owner:(id)arg1 ;
-(id)nodeGraphFromFile:(id)arg0 ;
-(id)getLocalizedResourceNameFor:(id)arg0 ;
-(id)getLocalizedTextForTag:(id)arg0 ;
+(void)callDidLoadFromCCBForNodeGraph:(id)arg0 ;
+(id)dataFromFile:(id)arg0 pointScale:(*float)arg1 ;
+(id)reader;
+(id)nodeGraphFromFile:(id)arg0 owner:(id)arg1 ;
+(id)nodeGraphFromFile:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
+(id)nodeGraphFromFile:(id)arg0 ;
+(id)sceneWithNodeGraphFromFile:(id)arg0 owner:(id)arg1 ;
+(id)sceneWithNodeGraphFromFile:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
+(id)sceneWithNodeGraphFromFile:(id)arg0 ;
+(id)nodeGraphFromData:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
+(id)sceneWithNodeGraphFromData:(id)arg0 owner:(id)arg1 ;
+(id)sceneWithNodeGraphFromData:(id)arg0 owner:(id)arg1 parentSize:(struct CGSize )arg2 ;
+(id)ccbDirectoryPath;
+(void)setResolutionScale:(float)arg0 ;


@end


#endif