// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRSURVEYURLREQUEST_H
#define TRSURVEYURLREQUEST_H


#import <Foundation/Foundation.h>

@class TRRequest;

@interface TRSurveyURLRequest : TRRequest

@property (retain, nonatomic) NSString *surveyURLString; // ivar: _surveyURLString
@property (retain, nonatomic) NSString *cpIdentifier; // ivar: _cpIdentifier


-(id)initWithSurveyURL:(id)arg0 andCPIdentifier:(id)arg1 ;


@end


#endif