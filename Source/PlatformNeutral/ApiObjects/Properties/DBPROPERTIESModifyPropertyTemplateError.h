///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBPROPERTIESModifyPropertyTemplateError;

#pragma mark - API Object

/// 
/// The ModifyPropertyTemplateError union.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBPROPERTIESModifyPropertyTemplateError : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBPROPERTIESModifyPropertyTemplateErrorTag enum type represents the
/// possible tag states with which the DBPROPERTIESModifyPropertyTemplateError
/// union can exist.
typedef NS_ENUM(NSInteger, DBPROPERTIESModifyPropertyTemplateErrorTag) {
    /// Property template does not exist for given identifier.
    DBPROPERTIESModifyPropertyTemplateErrorTemplateNotFound,

    /// You do not have the permissions to modify this property template.
    DBPROPERTIESModifyPropertyTemplateErrorRestrictedContent,

    /// (no description).
    DBPROPERTIESModifyPropertyTemplateErrorOther,

    /// A property field name already exists in the template.
    DBPROPERTIESModifyPropertyTemplateErrorConflictingPropertyNames,

    /// There are too many properties in the changed template. The maximum
    /// number of properties per template is 32.
    DBPROPERTIESModifyPropertyTemplateErrorTooManyProperties,

    /// There are too many templates for the team.
    DBPROPERTIESModifyPropertyTemplateErrorTooManyTemplates,

    /// The template name, description or field names is too large.
    DBPROPERTIESModifyPropertyTemplateErrorTemplateAttributeTooLarge,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBPROPERTIESModifyPropertyTemplateErrorTag tag;

/// Property template does not exist for given identifier. Ensure the
/// isTemplateNotFound method returns true before accessing, otherwise a runtime
/// exception will be raised.
@property (nonatomic, readonly, copy) NSString * _Nonnull templateNotFound;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of TemplateNotFound.
/// 
/// About the TemplateNotFound tag state: Property template does not exist for
/// given identifier.
/// 
/// @param templateNotFound Property template does not exist for given
/// identifier.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithTemplateNotFound:(NSString * _Nonnull)templateNotFound;

/// 
/// Initializes union class with tag state of RestrictedContent.
/// 
/// About the RestrictedContent tag state: You do not have the permissions to
/// modify this property template.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithRestrictedContent;

/// 
/// Initializes union class with tag state of Other.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithOther;

/// 
/// Initializes union class with tag state of ConflictingPropertyNames.
/// 
/// About the ConflictingPropertyNames tag state: A property field name already
/// exists in the template.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithConflictingPropertyNames;

/// 
/// Initializes union class with tag state of TooManyProperties.
/// 
/// About the TooManyProperties tag state: There are too many properties in the
/// changed template. The maximum number of properties per template is 32.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithTooManyProperties;

/// 
/// Initializes union class with tag state of TooManyTemplates.
/// 
/// About the TooManyTemplates tag state: There are too many templates for the
/// team.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithTooManyTemplates;

/// 
/// Initializes union class with tag state of TemplateAttributeTooLarge.
/// 
/// About the TemplateAttributeTooLarge tag state: The template name,
/// description or field names is too large.
/// 
/// @return An initialized DBPROPERTIESModifyPropertyTemplateError instance.
/// 
- (nonnull instancetype)initWithTemplateAttributeTooLarge;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value TemplateNotFound.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// templateNotFound property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value TemplateNotFound.
/// 
- (BOOL)isTemplateNotFound;

/// 
/// Retrieves whether the union's current tag state has value RestrictedContent.
/// 
/// @return Whether the union's current tag state has value RestrictedContent.
/// 
- (BOOL)isRestrictedContent;

/// 
/// Retrieves whether the union's current tag state has value Other.
/// 
/// @return Whether the union's current tag state has value Other.
/// 
- (BOOL)isOther;

/// 
/// Retrieves whether the union's current tag state has value
/// ConflictingPropertyNames.
/// 
/// @return Whether the union's current tag state has value
/// ConflictingPropertyNames.
/// 
- (BOOL)isConflictingPropertyNames;

/// 
/// Retrieves whether the union's current tag state has value TooManyProperties.
/// 
/// @return Whether the union's current tag state has value TooManyProperties.
/// 
- (BOOL)isTooManyProperties;

/// 
/// Retrieves whether the union's current tag state has value TooManyTemplates.
/// 
/// @return Whether the union's current tag state has value TooManyTemplates.
/// 
- (BOOL)isTooManyTemplates;

/// 
/// Retrieves whether the union's current tag state has value
/// TemplateAttributeTooLarge.
/// 
/// @return Whether the union's current tag state has value
/// TemplateAttributeTooLarge.
/// 
- (BOOL)isTemplateAttributeTooLarge;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBPROPERTIESModifyPropertyTemplateError
/// union.
/// 
@interface DBPROPERTIESModifyPropertyTemplateErrorSerializer : NSObject 

/// 
/// Serializes DBPROPERTIESModifyPropertyTemplateError instances.
/// 
/// @param instance An instance of the DBPROPERTIESModifyPropertyTemplateError
/// API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBPROPERTIESModifyPropertyTemplateError API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBPROPERTIESModifyPropertyTemplateError * _Nonnull)instance;

/// 
/// Deserializes DBPROPERTIESModifyPropertyTemplateError instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBPROPERTIESModifyPropertyTemplateError API object.
/// 
/// @return An instantiation of the DBPROPERTIESModifyPropertyTemplateError
/// object.
/// 
+ (DBPROPERTIESModifyPropertyTemplateError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
