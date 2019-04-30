Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DFAFF3A
	for <lists+linux-um@lfdr.de>; Tue, 30 Apr 2019 20:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0tMUE3igayyINavLQVDmtm8pG3mH/D5gL34NY0oK+nU=; b=mVNHfMf/azU97p/KK/n/fCzYc
	gs3f3nGRGZTHhrsbP1jD65PlG8y+IiVXjfkQb/bmsc0xfs8qvXOpWFatAd769q2/UKVhuh3qxn6oh
	3Knv+Qj03rtRwE1mbmiS9hQhuwFre2AWRXVHJlwTKzLmO9JaWeIOYkmIJoPWVXLvt+/FubfDE5p0T
	dyPvHW4O/rYWS/n6zk/d/7ZjRnKdJbBZVdVtYp8q0Qw2qttInxcCRzsO+zvW36Zpn9zyxpn1P+Ctg
	bDOlxvMLkTYIVJBnCWh9GnlptiIjfMrYp1KxaB12T47wC+jJz3oLa93JimjMxcdZP+4DXBm7EBD37
	pUIVrCguw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLX4I-00023L-LV; Tue, 30 Apr 2019 18:01:26 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLX4F-00022C-6E
 for linux-um@lists.infradead.org; Tue, 30 Apr 2019 18:01:25 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hLWPr-00022s-OL; Tue, 30 Apr 2019 17:19:39 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hLWPp-0001Lw-6i; Tue, 30 Apr 2019 18:19:39 +0100
Subject: Re: [uml-devel] How to convert UML user-space virtual address into
 HOST user-space virtual address?
To: Pablo Pessolani <ppessolani@hotmail.com>, linux-um@lists.infradead.org
References: <DM5PR2001MB17712DD834B1FE3447F1904ECF3A0@DM5PR2001MB1771.namprd20.prod.outlook.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <92895366-dab3-ffe4-877a-f6c9f90b9471@kot-begemot.co.uk>
Date: Tue, 30 Apr 2019 18:19:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <DM5PR2001MB17712DD834B1FE3447F1904ECF3A0@DM5PR2001MB1771.namprd20.prod.outlook.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_110123_364393_837F5B75 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 30/04/2019 16:38, Pablo Pessolani wrote:
> Hi:
>  =A0 =A0 I am writing a UML device driver wrapper (uml/drivers),=A0 and I=
 need =

> to convert=A0an address of a UML user-space process into an address of UM=
L =

> kernel space.
> =

> i.e.
> =

> Process_running_within_UML(){
>  =A0 =A0 =A0 =A0 =A0char uml_usr_buffer[MAXBUF];
>  =A0 =A0 =A0 =A0 =A0.....
> ret =3D ioctl(dvk_fd,DVK_IOCSDCINIT, (int) uml_usr_buffer);
> }
> =

> UML *ioctl()* syscall is translated by UML to os_ioctl_generic =

> <https://elixir.bootlin.com/linux/v4.9.88/ident/os_ioctl_generic>()  =

> which then calls host *ioctl().*
> =

> The *uml_usr_buffe*r address is a UML virtual address, not host virtual =

> address.
> I need to convert this UML user-space virtual address into user-space =

> HOST virtual address.

UML Kernel "phys" address =3D=3D Host kernel process user space address.

> *
> *
> Can I use, virt_to_phys() ??

Off the top of my head - Yes.

> *
> *
> *Thanks in advance.*
> *PAP*
> *
> *
> =

> =

> =

> =

> _______________________________________________
> User-mode-linux-devel mailing list
> User-mode-linux-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/user-mode-linux-devel
> =


Switching to the new mailing list.
Best Regards,

-- =

Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
