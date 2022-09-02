// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef PRF_H
#define PRF_H


#import <Foundation/Foundation.h>


@interface PRF : NSObject {
    char i;
    char j;
    char temp;
    char * S;
}




-(id)init;
-(unsigned char)enc:(unsigned char)arg0 ;


@end


#endif