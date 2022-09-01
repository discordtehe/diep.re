// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDSCRIPTINJECTOR_H
#define GADOMIDSCRIPTINJECTOR_H


#import <Foundation/Foundation.h>


@interface GADOMIDScriptInjector : NSObject



+(id)injectScriptContent:(id)arg0 intoHTML:(id)arg1 error:(*id)arg2 ;
+(id)stringFromHtml:(id)arg0 byInsertingScript:(id)arg1 ;
+(NSUInteger)indexForScriptInHtml:(id)arg0 ;
+(struct _NSRange )replaceSelfClosingTagInHtml:(id)arg0 tagRange:(struct _NSRange )arg1 ;
+(id)tagFromHtml:(id)arg0 inRange:(struct _NSRange )arg1 ;
+(id)commentsInHtml:(id)arg0 ;


@end


#endif