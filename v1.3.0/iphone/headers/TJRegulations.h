// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJREGULATIONS_H
#define TJREGULATIONS_H


#import <Foundation/Foundation.h>


@interface TJRegulations : NSObject {
    NSNumber *isSubjectToGDPR;
    NSString *consent;
    NSNumber *isBelowConsentAge;
}




-(id)init;
-(void)setUserConsent:(id)arg0 ;
-(id)getUserConsent;
-(void)subjectToGDPR:(BOOL)arg0 ;
-(void)storeGDPRApplicability;
-(void)storeUserConsent;
-(void)loadRegulations;
-(id)getRegulationParameters;
-(void)setBelowConsentAge:(BOOL)arg0 ;
-(void)storeBelowConsentAgeApplicability;
-(BOOL)isBelowConsentAge;
+(id)sharedInstance;
+(void)setUserConsent:(id)arg0 ;
+(id)getUserConsent;
+(void)subjectToGDPR:(BOOL)arg0 ;
+(id)getRegulationParameters;
+(void)setBelowConsentAge:(BOOL)arg0 ;
+(BOOL)isBelowConsentAge;


@end


#endif