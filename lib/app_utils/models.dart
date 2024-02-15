// To parse this JSON data, do
//
//     final ticketSchema = ticketSchemaFromJson(jsonString);

import 'dart:convert';

TicketSchema ticketSchemaFromJson(String str) => TicketSchema.fromJson(json.decode(str));

String ticketSchemaToJson(TicketSchema data) => json.encode(data.toJson());

class TicketSchema {
    final int? id;
    final String? ticketno;
    final String? title;
    final int? customerid;
    final int? jobid;
    final int? cleanerid;
    final String? ticketdate;
    final int? status;
    final int? reopenCount;
    final int? createdByUserType;
    final int? createdByUserId;
    final int? isVisible;
    final int? sourceId;
    final int? categoryId;
    final String? lastDateResolution;
    final String? lastDateFeedback;
    final int? subscriptionId;
    final String? tableName;
    final int? refId;
    final int? campaignId;
    final int? ownerUserId;
    final int? ownerUserType;
    final int? userType;
    final int? userId;
    final String? tags;
    final int? referenceId;
    final int? referenceType;
    final int? wc1CampaignStatus;
    final int? wc1CustomerSentiment;
    final int? wc2CampaignStatus;
    final String? firstServiceDate;
    final int? wc1VisibleStatus;
    final int? parentTicketId;
    final int? createdAt;
    final String? updatedAt;
    final Customer? customer;
    final TicketAssign? ticketAssigns;
    final Ticketsubcat? ticketsubcat;
    final String? ticketSchemaCreatedAt;
    final String? customername;
    final Customer? customerinfo;
    final String? statusSelect;
    final String? color;
    final List<TicketAssign>? ticketSchemaTicketAssigns;
    final String? category;
    final String? source;

    TicketSchema({
        this.id,
        this.ticketno,
        this.title,
        this.customerid,
        this.jobid,
        this.cleanerid,
        this.ticketdate,
        this.status,
        this.reopenCount,
        this.createdByUserType,
        this.createdByUserId,
        this.isVisible,
        this.sourceId,
        this.categoryId,
        this.lastDateResolution,
        this.lastDateFeedback,
        this.subscriptionId,
        this.tableName,
        this.refId,
        this.campaignId,
        this.ownerUserId,
        this.ownerUserType,
        this.userType,
        this.userId,
        this.tags,
        this.referenceId,
        this.referenceType,
        this.wc1CampaignStatus,
        this.wc1CustomerSentiment,
        this.wc2CampaignStatus,
        this.firstServiceDate,
        this.wc1VisibleStatus,
        this.parentTicketId,
        this.createdAt,
        this.updatedAt,
        this.customer,
        this.ticketAssigns,
        this.ticketsubcat,
        this.ticketSchemaCreatedAt,
        this.customername,
        this.customerinfo,
        this.statusSelect,
        this.color,
        this.ticketSchemaTicketAssigns,
        this.category,
        this.source,
    });

    factory TicketSchema.fromJson(Map<String, dynamic> json) => TicketSchema(
        id: json["id"],
        ticketno: json["ticketno"],
        title: json["title"],
        customerid: json["customerid"],
        jobid: json["jobid"],
        cleanerid: json["cleanerid"],
        ticketdate: json["ticketdate"],
        status: json["status"],
        reopenCount: json["reopen_count"],
        createdByUserType: json["created_by_user_type"],
        createdByUserId: json["created_by_user_id"],
        isVisible: json["is_visible"],
        sourceId: json["source_id"],
        categoryId: json["category_id"],
        lastDateResolution: json["last_date_resolution"],
        lastDateFeedback: json["last_date_feedback"],
        subscriptionId: json["subscription_id"],
        tableName: json["table_name"],
        refId: json["ref_id"],
        campaignId: json["campaign_id"],
        ownerUserId: json["owner_user_id"],
        ownerUserType: json["owner_user_type"],
        userType: json["user_type"],
        userId: json["user_id"],
        tags: json["tags"],
        referenceId: json["reference_id"],
        referenceType: json["reference_type"],
        wc1CampaignStatus: json["wc1_campaign_status"],
        wc1CustomerSentiment: json["wc1_customer_sentiment"],
        wc2CampaignStatus: json["wc2_campaign_status"],
        firstServiceDate: json["first_service_date"],
        wc1VisibleStatus: json["wc1_visible_status"],
        parentTicketId: json["parent_ticket_id"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        customer: json["customer"] == null ? null : Customer.fromJson(json["customer"]),
        ticketAssigns: json["ticketAssigns"] == null ? null : TicketAssign.fromJson(json["ticketAssigns"]),
        ticketsubcat: json["ticketsubcat"] == null ? null : Ticketsubcat.fromJson(json["ticketsubcat"]),
        ticketSchemaCreatedAt: json["created_at"],
        customername: json["customername"],
        customerinfo: json["customerinfo"] == null ? null : Customer.fromJson(json["customerinfo"]),
        statusSelect: json["statusSelect"],
        color: json["color"],
        ticketSchemaTicketAssigns: json["ticket_assigns"] == null ? [] : List<TicketAssign>.from(json["ticket_assigns"]!.map((x) => TicketAssign.fromJson(x))),
        category: json["category"],
        source: json["source"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ticketno": ticketno,
        "title": title,
        "customerid": customerid,
        "jobid": jobid,
        "cleanerid": cleanerid,
        "ticketdate": ticketdate,
        "status": status,
        "reopen_count": reopenCount,
        "created_by_user_type": createdByUserType,
        "created_by_user_id": createdByUserId,
        "is_visible": isVisible,
        "source_id": sourceId,
        "category_id": categoryId,
        "last_date_resolution": lastDateResolution,
        "last_date_feedback": lastDateFeedback,
        "subscription_id": subscriptionId,
        "table_name": tableName,
        "ref_id": refId,
        "campaign_id": campaignId,
        "owner_user_id": ownerUserId,
        "owner_user_type": ownerUserType,
        "user_type": userType,
        "user_id": userId,
        "tags": tags,
        "reference_id": referenceId,
        "reference_type": referenceType,
        "wc1_campaign_status": wc1CampaignStatus,
        "wc1_customer_sentiment": wc1CustomerSentiment,
        "wc2_campaign_status": wc2CampaignStatus,
        "first_service_date": firstServiceDate,
        "wc1_visible_status": wc1VisibleStatus,
        "parent_ticket_id": parentTicketId,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "customer": customer?.toJson(),
        "ticketAssigns": ticketAssigns?.toJson(),
        "ticketsubcat": ticketsubcat?.toJson(),
        "created_at": ticketSchemaCreatedAt,
        "customername": customername,
        "customerinfo": customerinfo?.toJson(),
        "statusSelect": statusSelect,
        "color": color,
        "ticket_assigns": ticketSchemaTicketAssigns == null ? [] : List<dynamic>.from(ticketSchemaTicketAssigns!.map((x) => x.toJson())),
        "category": category,
        "source": source,
    };
}

class Customer {
    final int? id;
    final int? cleanerId;
    final int? gstNumber;
    final int? distributorid;
    final String? firstName;
    final String? lastName;
    final String? email;
    final String? phone;
    final String? gender;
    final String? flatno;
    final String? locality;
    final String? addressLine1;
    final String? addressLine2;
    final String? latitude;
    final String? longitude;
    final int? city;
    final String? state;
    final String? pincode;
    final int? isPremium;
    final int? termscondi;
    final int? status;
    final int? subStatusId;
    final String? profileImage;
    final int? stage;
    final int? societyid;
    final String? cleanercode;
    final int? cleanerlead;
    final int? isAutodebitEnable;
    final int? userType;
    final dynamic autoDebitAccessKey;
    final dynamic customerAuthenticationId;
    final dynamic authorizationStatus;
    final int? coins;
    final int? walletCoins;
    final String? razorpayCustomerId;
    final String? referBy;
    final int? appRating;
    final int? inServiceableArea;
    final int? isDeleted;
    final String? otherSocietyName;
    final int? sourceId;
    final dynamic subsource;
    final int? enableNotification;
    final int? campaignId;
    final int? activeStatus;
    final int? custTypeStatus;
    final String? publicTag;
    final String? privateTag;
    final dynamic privateTagEmogie;
    final String? tags;
    final int? approveCoinUsage;
    final int? kylascontactid;
    final int? statusId;
    final String? lastUpdatedAppVersion;
    final int? customerOnboardedString;
    final int? isWhatsApp;
    final String? modelForExternal;
    final int? batchId;
    final String? lastCallStatus;
    final String? lastCallType;
    final int? lastCallString;
    final int? callCount;
    final String? exotelCallSid;
    final int? createdAt;
    final int? updatedAt;

    Customer({
        this.id,
        this.cleanerId,
        this.gstNumber,
        this.distributorid,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.gender,
        this.flatno,
        this.locality,
        this.addressLine1,
        this.addressLine2,
        this.latitude,
        this.longitude,
        this.city,
        this.state,
        this.pincode,
        this.isPremium,
        this.termscondi,
        this.status,
        this.subStatusId,
        this.profileImage,
        this.stage,
        this.societyid,
        this.cleanercode,
        this.cleanerlead,
        this.isAutodebitEnable,
        this.userType,
        this.autoDebitAccessKey,
        this.customerAuthenticationId,
        this.authorizationStatus,
        this.coins,
        this.walletCoins,
        this.razorpayCustomerId,
        this.referBy,
        this.appRating,
        this.inServiceableArea,
        this.isDeleted,
        this.otherSocietyName,
        this.sourceId,
        this.subsource,
        this.enableNotification,
        this.campaignId,
        this.activeStatus,
        this.custTypeStatus,
        this.publicTag,
        this.privateTag,
        this.privateTagEmogie,
        this.tags,
        this.approveCoinUsage,
        this.kylascontactid,
        this.statusId,
        this.lastUpdatedAppVersion,
        this.customerOnboardedString,
        this.isWhatsApp,
        this.modelForExternal,
        this.batchId,
        this.lastCallStatus,
        this.lastCallType,
        this.lastCallString,
        this.callCount,
        this.exotelCallSid,
        this.createdAt,
        this.updatedAt,
    });

    factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        cleanerId: json["cleaner_id"],
        gstNumber: json["gst_number"],
        distributorid: json["distributorid"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        gender: json["gender"],
        flatno: json["flatno"],
        locality: json["locality"],
        addressLine1: json["address_line_1"],
        addressLine2: json["address_line_2"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: json["city"],
        state: json["state"],
        pincode: json["pincode"],
        isPremium: json["is_premium"],
        termscondi: json["termscondi"],
        status: json["status"],
        subStatusId: json["sub_status_id"],
        profileImage: json["profile_image"],
        stage: json["stage"],
        societyid: json["societyid"],
        cleanercode: json["cleanercode"],
        cleanerlead: json["cleanerlead"],
        isAutodebitEnable: json["is_autodebit_enable"],
        userType: json["userType"],
        autoDebitAccessKey: json["auto_debit_access_key"],
        customerAuthenticationId: json["customer_authentication_id"],
        authorizationStatus: json["authorization_status"],
        coins: json["coins"],
        walletCoins: json["wallet_coins"],
        razorpayCustomerId: json["razorpay_customer_id"],
        referBy: json["referBy"],
        appRating: json["app_rating"],
        inServiceableArea: json["in_serviceable_area"],
        isDeleted: json["is_deleted"],
        otherSocietyName: json["other_society_name"],
        sourceId: json["source_id"],
        subsource: json["subsource"],
        enableNotification: json["enable_notification"],
        campaignId: json["campaign_id"],
        activeStatus: json["active_status"],
        custTypeStatus: json["cust_type_status"],
        publicTag: json["public_tag"],
        privateTag: json["private_tag"],
        privateTagEmogie: json["private_tag_emogie"],
        tags: json["tags"],
        approveCoinUsage: json["approve_coin_usage"],
        kylascontactid: json["kylascontactid"],
        statusId: json["status_id"],
        lastUpdatedAppVersion: json["last_updated_app_version"],
        customerOnboardedString: json["customer_onboarded_String"],
        isWhatsApp: json["isWhatsApp"],
        modelForExternal: json["model_for_external"],
        batchId: json["batch_id"],
        lastCallStatus: json["last_call_status"],
        lastCallType: json["last_call_type"],
        lastCallString: json["last_call_date_time"],
        callCount: json["call_count"],
        exotelCallSid: json["exotel_call_sid"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cleaner_id": cleanerId,
        "gst_number": gstNumber,
        "distributorid": distributorid,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "gender": gender,
        "flatno": flatno,
        "locality": locality,
        "address_line_1": addressLine1,
        "address_line_2": addressLine2,
        "latitude": latitude,
        "longitude": longitude,
        "city": city,
        "state": state,
        "pincode": pincode,
        "is_premium": isPremium,
        "termscondi": termscondi,
        "status": status,
        "sub_status_id": subStatusId,
        "profile_image": profileImage,
        "stage": stage,
        "societyid": societyid,
        "cleanercode": cleanercode,
        "cleanerlead": cleanerlead,
        "is_autodebit_enable": isAutodebitEnable,
        "userType": userType,
        "auto_debit_access_key": autoDebitAccessKey,
        "customer_authentication_id": customerAuthenticationId,
        "authorization_status": authorizationStatus,
        "coins": coins,
        "wallet_coins": walletCoins,
        "razorpay_customer_id": razorpayCustomerId,
        "referBy": referBy,
        "app_rating": appRating,
        "in_serviceable_area": inServiceableArea,
        "is_deleted": isDeleted,
        "other_society_name": otherSocietyName,
        "source_id": sourceId,
        "subsource": subsource,
        "enable_notification": enableNotification,
        "campaign_id": campaignId,
        "active_status": activeStatus,
        "cust_type_status": custTypeStatus,
        "public_tag": publicTag,
        "private_tag": privateTag,
        "private_tag_emogie": privateTagEmogie,
        "tags": tags,
        "approve_coin_usage": approveCoinUsage,
        "kylascontactid": kylascontactid,
        "status_id": statusId,
        "last_updated_app_version": lastUpdatedAppVersion,
        "customer_onboarded_String": customerOnboardedString,
        "isWhatsApp": isWhatsApp,
        "model_for_external": modelForExternal,
        "batch_id": batchId,
        "last_call_status": lastCallStatus,
        "last_call_type": lastCallType,
        "last_call_date_time": lastCallString,
        "call_count": callCount,
        "exotel_call_sid": exotelCallSid,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
    };
}

class TicketAssign {
    final int? id;
    final int? ticketid;
    final int? userid;
    final String? userTable;
    final int? status;
    final int? createdAt;
    final int? updatedAt;
    final String? name;

    TicketAssign({
        this.id,
        this.ticketid,
        this.userid,
        this.userTable,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.name,
    });

    factory TicketAssign.fromJson(Map<String, dynamic> json) => TicketAssign(
        id: json["id"],
        ticketid: json["ticketid"],
        userid: json["userid"],
        userTable: json["user_table"],
        status: json["status"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ticketid": ticketid,
        "userid": userid,
        "user_table": userTable,
        "status": status,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "name": name,
    };
}

class Ticketsubcat {
    final dynamic id;
    final dynamic ticketId;
    final dynamic ticketSubcategoryId;
    final dynamic createdAt;
    final dynamic updatedAt;
    final Masterticketsubcategory? masterticketsubcategory;

    Ticketsubcat({
        this.id,
        this.ticketId,
        this.ticketSubcategoryId,
        this.createdAt,
        this.updatedAt,
        this.masterticketsubcategory,
    });

    factory Ticketsubcat.fromJson(Map<String, dynamic> json) => Ticketsubcat(
        id: json["id"],
        ticketId: json["ticket_id"],
        ticketSubcategoryId: json["ticket_subcategory_id"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        masterticketsubcategory: json["masterticketsubcategory"] == null ? null : Masterticketsubcategory.fromJson(json["masterticketsubcategory"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ticket_id": ticketId,
        "ticket_subcategory_id": ticketSubcategoryId,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "masterticketsubcategory": masterticketsubcategory?.toJson(),
    };
}

class Masterticketsubcategory {
    final dynamic id;
    final dynamic subcategoryName;
    final dynamic subcategoryId;
    final dynamic categoryId;
    final dynamic appText;
    final dynamic inAppShown;
    final dynamic flowType;
    final dynamic viewOrder;
    final dynamic createdAt;
    final dynamic updatedAt;

    Masterticketsubcategory({
        this.id,
        this.subcategoryName,
        this.subcategoryId,
        this.categoryId,
        this.appText,
        this.inAppShown,
        this.flowType,
        this.viewOrder,
        this.createdAt,
        this.updatedAt,
    });

    factory Masterticketsubcategory.fromJson(Map<String, dynamic> json) => Masterticketsubcategory(
        id: json["id"],
        subcategoryName: json["subcategory_name"],
        subcategoryId: json["subcategory_id"],
        categoryId: json["category_id"],
        appText: json["app_text"],
        inAppShown: json["inAppShown"],
        flowType: json["flowType"],
        viewOrder: json["view_order"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "subcategory_name": subcategoryName,
        "subcategory_id": subcategoryId,
        "category_id": categoryId,
        "app_text": appText,
        "inAppShown": inAppShown,
        "flowType": flowType,
        "view_order": viewOrder,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
    };
}
