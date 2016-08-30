///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBTEAMMembersListContinueError;

#pragma mark - API Object

/// 
/// The MembersListContinueError union.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMMembersListContinueError : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBTEAMMembersListContinueErrorTag enum type represents the possible tag
/// states with which the DBTEAMMembersListContinueError union can exist.
typedef NS_ENUM(NSInteger, DBTEAMMembersListContinueErrorTag) {
    /// The cursor is invalid.
    DBTEAMMembersListContinueErrorInvalidCursor,

    /// (no description).
    DBTEAMMembersListContinueErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMMembersListContinueErrorTag tag;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of InvalidCursor.
/// 
/// About the InvalidCursor tag state: The cursor is invalid.
/// 
/// @return An initialized DBTEAMMembersListContinueError instance.
/// 
- (nonnull instancetype)initWithInvalidCursor;

/// 
/// Initializes union class with tag state of Other.
/// 
/// @return An initialized DBTEAMMembersListContinueError instance.
/// 
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value InvalidCursor.
/// 
/// @return Whether the union's current tag state has value InvalidCursor.
/// 
- (BOOL)isInvalidCursor;

/// 
/// Retrieves whether the union's current tag state has value Other.
/// 
/// @return Whether the union's current tag state has value Other.
/// 
- (BOOL)isOther;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBTEAMMembersListContinueError union.
/// 
@interface DBTEAMMembersListContinueErrorSerializer : NSObject 

/// 
/// Serializes DBTEAMMembersListContinueError instances.
/// 
/// @param instance An instance of the DBTEAMMembersListContinueError API
/// object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMMembersListContinueError API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMMembersListContinueError * _Nonnull)instance;

/// 
/// Deserializes DBTEAMMembersListContinueError instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMMembersListContinueError API object.
/// 
/// @return An instantiation of the DBTEAMMembersListContinueError object.
/// 
+ (DBTEAMMembersListContinueError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
