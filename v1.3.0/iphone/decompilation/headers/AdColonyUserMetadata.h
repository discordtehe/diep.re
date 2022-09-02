// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYUSERMETADATA_H
#define ADCOLONYUSERMETADATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AdColonyUserMetadata : NSObject {
    NSMutableDictionary *_metadata;
}


@property (nonatomic) NSInteger userAge; // ivar: _userAge
@property (retain, nonatomic) NSArray *userInterests; // ivar: _userInterests
@property (retain, nonatomic) NSString *userGender; // ivar: _userGender
@property (retain, nonatomic) NSNumber *userLatitude; // ivar: _userLatitude
@property (retain, nonatomic) NSNumber *userLongitude; // ivar: _userLongitude
@property (retain, nonatomic) NSString *userZipCode; // ivar: _userZipCode
@property (retain, nonatomic) NSNumber *userHouseholdIncome; // ivar: _userHouseholdIncome
@property (retain, nonatomic) NSString *userMaritalStatus; // ivar: _userMaritalStatus
@property (retain, nonatomic) NSString *userEducationLevel; // ivar: _userEducationLevel


-(id)getData;
-(id)init;
-(BOOL)setMetadataWithKey:(id)arg0 andStringValue:(id)arg1 ;
-(BOOL)setMetadataWithKey:(id)arg0 andNumericValue:(id)arg1 ;
-(BOOL)setMetadataWithKey:(id)arg0 andArrayValue:(id)arg1 ;
-(id)getStringMetadataWithKey:(id)arg0 ;
-(id)getNumericMetadataWithKey:(id)arg0 ;
-(id)getArrayMetadataWithKey:(id)arg0 ;


@end


#endif