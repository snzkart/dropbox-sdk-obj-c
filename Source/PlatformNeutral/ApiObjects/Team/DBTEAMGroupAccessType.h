///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBTEAMGroupAccessType;

#pragma mark - API Object

/// 
/// The GroupAccessType union.
/// 
/// Role of a user in group.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMGroupAccessType : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBTEAMGroupAccessTypeTag enum type represents the possible tag states
/// with which the DBTEAMGroupAccessType union can exist.
typedef NS_ENUM(NSInteger, DBTEAMGroupAccessTypeTag) {
    /// User is a member of the group, but has no special permissions.
    DBTEAMGroupAccessTypeMember,

    /// User can rename the group, and add/remove members.
    DBTEAMGroupAccessTypeOwner,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMGroupAccessTypeTag tag;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of Member.
/// 
/// About the Member tag state: User is a member of the group, but has no
/// special permissions.
/// 
/// @return An initialized DBTEAMGroupAccessType instance.
/// 
- (nonnull instancetype)initWithMember;

/// 
/// Initializes union class with tag state of Owner.
/// 
/// About the Owner tag state: User can rename the group, and add/remove
/// members.
/// 
/// @return An initialized DBTEAMGroupAccessType instance.
/// 
- (nonnull instancetype)initWithOwner;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value Member.
/// 
/// @return Whether the union's current tag state has value Member.
/// 
- (BOOL)isMember;

/// 
/// Retrieves whether the union's current tag state has value Owner.
/// 
/// @return Whether the union's current tag state has value Owner.
/// 
- (BOOL)isOwner;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBTEAMGroupAccessType union.
/// 
@interface DBTEAMGroupAccessTypeSerializer : NSObject 

/// 
/// Serializes DBTEAMGroupAccessType instances.
/// 
/// @param instance An instance of the DBTEAMGroupAccessType API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMGroupAccessType API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupAccessType * _Nonnull)instance;

/// 
/// Deserializes DBTEAMGroupAccessType instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMGroupAccessType API object.
/// 
/// @return An instantiation of the DBTEAMGroupAccessType object.
/// 
+ (DBTEAMGroupAccessType * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
