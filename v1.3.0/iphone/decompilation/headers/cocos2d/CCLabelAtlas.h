// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLABELATLAS_H
#define CCLABELATLAS_H


#import <Foundation/Foundation.h>

@class CCAtlasNode;
@protocol CCLabelProtocol;

@interface CCLabelAtlas : CCAtlasNode <CCLabelProtocol>

 {
    NSString *_string;
    NSUInteger _mapStartChar;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithString:(id)arg0 fntFile:(id)arg1 ;
-(id)initWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(NSUInteger)arg2 itemHeight:(NSUInteger)arg3 startCharMap:(NSUInteger)arg4 ;
-(id)initWithString:(id)arg0 texture:(id)arg1 itemWidth:(NSUInteger)arg2 itemHeight:(NSUInteger)arg3 startCharMap:(NSUInteger)arg4 ;
-(void)dealloc;
-(void)updateAtlasValues;
-(void)setString:(id)arg0 ;
-(id)string;
+(id)labelWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(NSUInteger)arg2 itemHeight:(NSUInteger)arg3 startCharMap:(NSUInteger)arg4 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 ;


@end


#endif