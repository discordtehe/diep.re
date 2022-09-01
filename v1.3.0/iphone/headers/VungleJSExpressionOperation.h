// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEJSEXPRESSIONOPERATION_H
#define VUNGLEJSEXPRESSIONOPERATION_H



@class VungleJSCommandOperation;

@interface VungleJSExpressionOperation : VungleJSCommandOperation



-(id)initWithJSExpression:(id)arg0 webViewFacade:(id)arg1 resultBlock:(id)arg2 ;
-(void)execute;
-(id)constructJavascriptExpression;


@end


#endif