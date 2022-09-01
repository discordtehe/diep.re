// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USERWALLET_H
#define USERWALLET_H


#import <Foundation/Foundation.h>


@interface UserWallet : NSObject {
    map<std::__1::basic_string<char>, int, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, int> > > _product_quantities;
    map<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > _product_ids_for_type;
}




-(id)init;
-(void)preloadWalletStructuresFromConfig;
-(void)dealloc;
-(struct vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > )productTypes;
-(?)productIdsFor;
-(int)quantityOwnedOf:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg0 ;
-(struct vector<std::__1::pair<std::__1::basic_string<char>, int>, std::__1::allocator<std::__1::pair<std::__1::basic_string<char>, int> > > )quantitiesOwnedWith:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg0 ;
+(id)userWallet;


@end


#endif