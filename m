Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC64B3847D
	for <lists+linux-um@lfdr.de>; Fri,  7 Jun 2019 08:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aBCTAo+ewYEA5DIC+u/0YNcRYOGJH2SuGU+bfsex0u0=; b=GT9E92m5f82/AwUEcV4OtnoKy
	dOxm+uUKvzy46Z0VlkQeZmvOC2/OOdL4KYJ2a7kxba0YuH5nZ2iPak+eJm+4vBLab+W9b9GO3PRqt
	fzifW0FdHuSX1kpq/tssilVRTF1PBdDSIHjEMK5LSkN4SCFKClnbZYgrBEKvmidW94wrKXPaT0uTY
	KVPRhh+pm01fks7dr+dyyNTzNfuAPkkh5rY2uhIwvtpJpPZu0PTy5A68SsaF+n+AQNMOJFIgSWx35
	/Y9s4D25RGv3/gaE/wd0XxfAyRHcbGBej+f1h6j7Xr91p7ubmlrcayX10InIcq9nIPz1ysmpBUMI6
	1YBe8c/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8Y6-0006D0-3e; Fri, 07 Jun 2019 06:40:26 +0000
Received: from ivanoab6.miniserver.com ([5.153.251.140]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8Y2-0006By-AS
 for linux-um@lists.infradead.org; Fri, 07 Jun 2019 06:40:24 +0000
Received: from [192.168.17.6] (helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hZ8Xw-0006No-QG; Fri, 07 Jun 2019 06:40:17 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.89)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1hZ8Xu-0001Qw-D8; Fri, 07 Jun 2019 07:40:16 +0100
Subject: Re: [uml-devel] Running functions in SKAS
To: Pablo Pessolani <ppessolani@hotmail.com>, linux-um@lists.infradead.org
References: <MN2PR20MB283115FDE610524A87F975BECF170@MN2PR20MB2831.namprd20.prod.outlook.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <e35cf47d-fbe8-962b-9bd7-31596523f1de@kot-begemot.co.uk>
Date: Fri, 7 Jun 2019 07:40:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <MN2PR20MB283115FDE610524A87F975BECF170@MN2PR20MB2831.namprd20.prod.outlook.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_234022_488409_666A95E9 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
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



On 07/06/2019 00:27, Pablo Pessolani wrote:
> Hi:
>  =A0 =A0 =A0I need to run a custom (host-OS) system call=A0 from a user-s=
pace =

> process of a running UML (without been ptraced)
>  =A0 =A0 =A0The system call considers the host-OS /*task_struct*/, nor UM=
L =

> kernel allocated/*task_struct*/ for the process.
>  =A0 =A0 =A0So as not to break the UML operating mode, I think that could=
 I do =

> it running a function located in the process' SKAS stub and invoked from =

> the UML Kernel (such as /*stub_clone_handler*/())
>  =A0 =A0 =A0I there any way to do that? Can I define global/static variab=
les =

> in the process' SKAS stub?
> Regards.
> PAP
> =

> =

> =

> _______________________________________________
> User-mode-linux-devel mailing list
> User-mode-linux-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/user-mode-linux-devel
> =

Changing to the current uml-mailing list.

That is one part of the code which has always been "and here be dragons" =

for me. My choice would be to do a device driver (f.e. char) and add map =

the relevant call onto an IOCTL.


-- =

Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
