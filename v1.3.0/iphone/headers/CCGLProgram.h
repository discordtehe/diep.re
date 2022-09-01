// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGLPROGRAM_H
#define CCGLPROGRAM_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCGLProgram : NSObject {
    *_hashUniformEntry _hashForUniforms;
    unsigned int _vertShader;
    unsigned int _fragShader;
    int _uniforms;
    ? _flags;
    NSString *_vertexShaderString;
    NSString *_fragmentShaderString;
    NSMutableDictionary *_attributes;
}


@property (readonly, nonatomic) unsigned int program; // ivar: _program


-(id)initWithVertexShaderByteArray:(char *)arg0 fragmentShaderByteArray:(char *)arg1 ;
-(void)buildShader;
-(void)rebuildShader;
-(id)initWithVertexShaderFilename:(id)arg0 fragmentShaderFilename:(id)arg1 ;
-(id)description;
-(BOOL)stringContains:(id)arg0 otherString:(id)arg1 ;
-(BOOL)compileShader:(*unsigned int)arg0 type:(unsigned int)arg1 byteArray:(char *)arg2 ;
-(void)addAttribute:(id)arg0 index:(unsigned int)arg1 ;
-(void)updateUniforms;
-(BOOL)link;
-(void)use;
-(id)logForOpenGLObject:(unsigned int)arg0 infoCallback:(*unk)arg1 logFunc:(*unk)arg2 ;
-(id)vertexShaderLog;
-(id)fragmentShaderLog;
-(BOOL)updateUniformLocation:(int)arg0 withData:(*void)arg1 sizeOfData:(NSUInteger)arg2 ;
-(int)uniformLocationForName:(id)arg0 ;
-(void)setUniformLocation:(int)arg0 withI1:(int)arg1 ;
-(void)setUniformLocation:(int)arg0 withF1:(float)arg1 ;
-(void)setUniformLocation:(int)arg0 withF1:(float)arg1 f2:(float)arg2 ;
-(void)setUniformLocation:(int)arg0 withF1:(float)arg1 f2:(float)arg2 f3:(float)arg3 ;
-(void)setUniformLocation:(int)arg0 withF1:(float)arg1 f2:(float)arg2 f3:(float)arg3 f4:(float)arg4 ;
-(void)setUniformLocation:(int)arg0 with2fv:(*float)arg1 count:(NSUInteger)arg2 ;
-(void)setUniformLocation:(int)arg0 with3fv:(*float)arg1 count:(NSUInteger)arg2 ;
-(void)setUniformLocation:(int)arg0 with4fv:(*void)arg1 count:(NSUInteger)arg2 ;
-(void)setUniformLocation:(int)arg0 withMatrix4fv:(*void)arg1 count:(NSUInteger)arg2 ;
-(void)setUniformsForBuiltins;
-(void)setUniformForModelViewProjectionMatrix;
-(void)dealloc;
+(id)programWithVertexShaderByteArray:(char *)arg0 fragmentShaderByteArray:(char *)arg1 ;
+(id)programWithVertexShaderFilename:(id)arg0 fragmentShaderFilename:(id)arg1 ;


@end


#endif