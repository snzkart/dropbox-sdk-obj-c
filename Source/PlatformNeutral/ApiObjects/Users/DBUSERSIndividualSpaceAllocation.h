///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBUSERSIndividualSpaceAllocation;

#pragma mark - API Object

/// 
/// The IndividualSpaceAllocation struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBUSERSIndividualSpaceAllocation : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The total space allocated to the user's account (bytes).
@property (nonatomic, readonly, copy) NSNumber * _Nonnull allocated;

#pragma mark - Constructors

/// 
/// Full constructor for the DBUSERSIndividualSpaceAllocation struct (exposes
/// all instance variables).
/// 
/// @param allocated The total space allocated to the user's account (bytes).
/// 
/// @return An initialized DBUSERSIndividualSpaceAllocation instance.
/// 
- (nonnull instancetype)initWithAllocated:(NSNumber * _Nonnull)allocated;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the IndividualSpaceAllocation struct.
/// 
@interface DBUSERSIndividualSpaceAllocationSerializer : NSObject 

/// 
/// Serializes DBUSERSIndividualSpaceAllocation instances.
/// 
/// @param instance An instance of the DBUSERSIndividualSpaceAllocation API
/// object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBUSERSIndividualSpaceAllocation API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBUSERSIndividualSpaceAllocation * _Nonnull)instance;

/// 
/// Deserializes DBUSERSIndividualSpaceAllocation instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBUSERSIndividualSpaceAllocation API object.
/// 
/// @return An instantiation of the DBUSERSIndividualSpaceAllocation object.
/// 
+ (DBUSERSIndividualSpaceAllocation * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
