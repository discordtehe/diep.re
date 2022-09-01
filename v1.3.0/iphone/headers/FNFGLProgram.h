// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFGLPROGRAM_H
#define FNFGLPROGRAM_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FNFGLProgram : NSObject {
    NSMutableArray *_attributes;
    unsigned int _program;
    unsigned int _vertexShader;
    unsigned int _fragmentShader;
}


@property (readonly, nonatomic) BOOL initialized; // ivar: _initialized
@property (readonly, copy, nonatomic) NSString *vertexShaderLog; // ivar: _vertexShaderLog
@property (readonly, copy, nonatomic) NSString *fragmentShaderLog; // ivar: _fragmentShaderLog
@property (readonly, copy, nonatomic) NSString *programLog; // ivar: _programLog


-(id)initWithVertexShader:(char *)arg0 fragmentShader:(char *)arg1 ;
-(BOOL)link;
-(BOOL)validate;
-(unsigned int)addAttribute:(id)arg0 ;
-(int)uniformIndex:(char *)arg0 ;
-(void)use;


@end


#endif