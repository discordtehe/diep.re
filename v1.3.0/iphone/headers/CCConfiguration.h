// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCONFIGURATION_H
#define CCCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface CCConfiguration : NSObject {
    BOOL _openGLInitialized;
    BOOL _supportsMapBuffer;
    int _maxSamplesAllowed;
}


@property (readonly, nonatomic) int maxTextureSize; // ivar: _maxTextureSize
@property (readonly, nonatomic) int maxTextureUnits; // ivar: _maxTextureUnits
@property (readonly, nonatomic) BOOL supportsNPOT; // ivar: _supportsNPOT
@property (readonly, nonatomic) BOOL supportsBGRA8888; // ivar: _supportsBGRA8888
@property (readonly, nonatomic) BOOL supportsDiscardFramebuffer; // ivar: _supportsDiscardFramebuffer
@property (readonly, nonatomic) BOOL supportsShareableVAO; // ivar: _supportsShareableVAO
@property (readonly, nonatomic) BOOL supportsMapBuffer;
@property (readonly, nonatomic) unsigned int OSVersion; // ivar: _OSVersion
@property (nonatomic) BOOL UseNewTextureLoadingCode; // ivar: _UseNewTextureLoadingCode
@property (nonatomic) BOOL UseNewTTFRenderingCode; // ivar: _UseNewTTFRenderingCode
@property (nonatomic) BOOL useNewResourceManagement; // ivar: _useNewResourceManagement
@property (nonatomic) BOOL useNewPlistSerialization; // ivar: _useNewPlistSerialization
@property (nonatomic) BOOL useNewTTFAtlas; // ivar: _useNewTTFAtlas
@property (nonatomic) BOOL useNewRenderer; // ivar: _useNewRenderer
@property (nonatomic) BOOL useMiniclipWindowManager; // ivar: _useMiniclipWindowManager
@property (nonatomic) BOOL useNewTextureScale; // ivar: _useNewTextureScale
@property (readonly, nonatomic) BOOL supportsVAO; // ivar: _supportsVAO


-(id)init;
-(BOOL)checkForGLExtension:(id)arg0 ;
-(NSInteger)runningDevice;
-(void)getOpenGLvariables;
-(void)dumpInfo;
+(id)sharedConfiguration;
+(id)alloc;


@end


#endif