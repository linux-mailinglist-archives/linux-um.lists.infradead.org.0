Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175D628000
	for <lists+linux-um@lfdr.de>; Thu, 23 May 2019 16:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNW4i2QyHVD+lh0Aa6BbyoX0XcMiz66A+iPpSZJlhvw=; b=CcTTnD7+G12VKM
	AYZyDkePyU/aaIFjWTNbbTCY4oHe2lmb4j70QNL0jzQNEOAFDsMYM6cgi5n+sVQFVQvoT+ZTjkSzh
	gnf/ov1Qyq0P6Cckff6BZvzgjJYi5tAeV9sWEn1O+4VWAQIB9Vezd4k/JxPBi+Lah6nwOKOhHolck
	dQjDlEcQTxN6Owr7evMWo1AaPSmjdlHBR+MQfzyjqRRCnuTcYAtNXcyzzGObG36gal4eSCNu+hyMJ
	Eg408Ozyjcf476fRMHrIZtqoodPWMA9eJky8mKFuqhMXPF815lIHrz02sHmJLw6LMqwO77w7wDeZG
	Tcc7hzGcCpSxU2KoUq1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTouV-0001LA-6V; Thu, 23 May 2019 14:41:35 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTouS-0001Kn-MI
 for linux-um@lists.infradead.org; Thu, 23 May 2019 14:41:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id i8so5622008oth.10
 for <linux-um@lists.infradead.org>; Thu, 23 May 2019 07:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QBmnu1LEmcuyOzLtmMtO+yAs7pP/eUMlcW70tRmCsiY=;
 b=edZUaSYZg8WHocXE30PmdS9NHHHsnT8ZmKwF5+ZnzKEJ87s4KYIo6Ivbp8PrZQlVCH
 MUE8/Sxg2IxqWMTTZ1kMzkv6HOILobHtqvBVNJVaQvCBcnOrMkPNu3AT0P+9w3ySZ0oj
 kotydb+smt9ecozOgWowNKYODBkYi1kDOFUaUaMJI5CmQ0+jFwA3PqfRG3lTqK4+cPOK
 sunO+bNiOqO6dG9cV1OK3UDjbmoIxSpRawUBpUpOGXF4GopdCbhv9IxOL/52IbEPESyb
 0SehgGXNef3WWbSheUj70BeJayzWOiFSkMaIo89eEYulqD+J60wInc/Dcq7g5C/HRGeu
 91QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QBmnu1LEmcuyOzLtmMtO+yAs7pP/eUMlcW70tRmCsiY=;
 b=e5os1uGTAqUTU37oPVElTdW3DrnAaQcxGZIEUfvqE7OmaMPXq4TBgB50EAaMawVsh8
 BSr2FucrYBOoxCKxhivOsHBtRYESdJF7oj3gVxxAKdpDykyjN/MKwoAYqh5s2mGPSbup
 HE441wYp1WoE3ZUTOujANo+FYRfZFiQKzrS0EnuGioc3JGt+mr2YhpVmKdQoYbf2FbXt
 D1zwBY05R4nhkNf+r28bSpQCOAr/IlyHYhjrL3koIR5tyhhqjo5qSbcshAq1V3Jw5zpg
 iog6hXSfxOIMIMxKfDKDrAAqa/Fq0laVnIpxlRol9rpvjWumOPbS7B6vtwfjt6/GE7Yd
 EMIw==
X-Gm-Message-State: APjAAAXDRvR7+pyEkzNS9Yot+eqfPFKPewbcoeCYiaadUf870O+89X92
 0TOLqXpYJ0s1QA4PyzxAbFV+SzupyQXxcY/f78O4vR4DDJI=
X-Google-Smtp-Source: APXvYqygrOm5yXUSAqIlzuakeusNYiyGsqOCm5Z0qlbnOO3HNuGKS1EFt61JKl1e2yIg91Laj/1LHd3CzSqH6FL9jp0=
X-Received: by 2002:a9d:7d9a:: with SMTP id j26mr6360770otn.102.1558622489921; 
 Thu, 23 May 2019 07:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
 <20190523115950.GH26632@stefanha-x1.localdomain>
 <41d64b8971a097d1568f947517b45d09c156ccc8.camel@sipsolutions.net>
In-Reply-To: <41d64b8971a097d1568f947517b45d09c156ccc8.camel@sipsolutions.net>
From: Stefan Hajnoczi <stefanha@gmail.com>
Date: Thu, 23 May 2019 15:41:18 +0100
Message-ID: <CAJSP0QWSZXT3OJAc=abagD40xZ7DWWrcP_+AwVBuqQyQNgaOEg@mail.gmail.com>
Subject: Re: [Qemu-devel] custom virt-io support (in user-mode-linux)
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_074132_730574_97441495 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (stefanha[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: ido@wizery.com, linux-um@lists.infradead.org,
 qemu-devel <qemu-devel@nongnu.org>,
 Linux Virtualization <virtualization@lists.linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 3:25 PM Johannes Berg <johannes@sipsolutions.net> wrote:
> Not sure I understand why there's all this stuff about multiple FDs,
> once you have access to the guest's memory, why do you still need a
> second (or more) FDs?

The memory regions could be different files (maybe additional RAM was
hotplugged later).

> Also, not sure I understand how the client is started?

The vhost-user device backend can be launched before QEMU.  QEMU is
started with the UNIX domain socket path so it can connect.

QEMU itself doesn't fork+exec the vhost-user device backend.  It's
expected that the user or the management stack has already launched
the vhost-user device backend.

> Once we have a connection, I guess as a client I'd at the very least
> have to handle
>  * VHOST_USER_GET_FEATURES and reply with the features, obviously, which
>    is in this case just VHOST_USER_F_PROTOCOL_FEATURES?
>
>  * VHOST_USER_SET_FEATURES - not sure, what would that do? the master
>    sends VHOST_USER_GET_PROTOCOL_FEATURES which is with this feature
>    bit? Especially since it says: "Slave that reported
>    VHOST_USER_F_PROTOCOL_FEATURES must support this message even before
>    VHOST_USER_SET_FEATURES was called."
>
>  * VHOST_USER_GET_PROTOCOL_FEATURES - looking at the list, most I don't
>    really need here, but OK
>
>  * VHOST_USER_SET_OWNER - ??
>
>  * VHOST_USER_RESET_OWNER - ignore
>
>  * VHOST_USER_SET_MEM_TABLE - store the data/FDs for later use, I guess
>
>  * VHOST_USER_SET_VRING_NUM - store the data for later use
>  * VHOST_USER_SET_VRING_ADDR - dito
>  * VHOST_USER_SET_VRING_BASE - dito
>  * VHOST_USER_SET_VRING_KICK - start epoll on the FD (assuming there is
>                                one, give up if not?) - well, if ring is
>                                enabled?
>  * VHOST_USER_SET_VRING_CALL - ...
>
> I guess there might be better documentation on the ioctl interfaces?
>
>
> Do you know if there's a sample client/server somewhere?

See contrib/libvhost-user in the QEMU source tree as well as the
vhost-user-blk and vhost-user-scsi examples in the contrib/ directory.

Stefan

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
