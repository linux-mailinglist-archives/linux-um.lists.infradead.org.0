Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A24110C633
	for <lists+linux-um@lfdr.de>; Thu, 28 Nov 2019 10:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKkJHO1yMQiiMl/zIJcHAsG8mBX92z0iAKRfZMZKBA4=; b=Q7q+1KSGVeGZXr
	gLuBs+rsG3rUnIu/4KpTIrMRwcvle6HVWzRDz5pLOQ2PzckdnkdbRlMrmv8pACmu78VJZDYPn6+mP
	/UD6k3PSTHgduiLUm9YmdBCocehRDGGn22oVscN/CHz8krcjqFdu9qUzhB2jhRihE0slsbxmbfhYH
	WGHnorjgRoIdxHoHkmAJH3b0C/wMczoHxQI2eK4RAa5FsRKn8aJD9770NxK4Rg8GYsjanVPip+FWO
	6mLa7P6EReiYfFZ7pdCxG8CSirZvCgHIi/yESVB/W3qkBV3pbFUTWSzYsFOutyRhK9ekMp5l8MwB7
	EP6lUzhs58tO4o80dj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGUL-00020X-5K; Thu, 28 Nov 2019 09:53:29 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGUI-0001zx-Ca
 for linux-um@lists.infradead.org; Thu, 28 Nov 2019 09:53:28 +0000
Received: by mail-pl1-x635.google.com with SMTP id t8so11314309plr.8
 for <linux-um@lists.infradead.org>; Thu, 28 Nov 2019 01:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=zyNStJqfiewBjRrL2JduXj81mYZdeeOY8ue5/WecE7U=;
 b=GeEwxa3+O+1AA86sOy8m6CNDboMkcj9hSJYSxAG3MsaNzaIkK+HO2BXl/xReeJTdOj
 ViIe7DbuwH6hOewLyXM/qRMx44ZwMxkYZEpkEHrLm1p9PuIRGaqV5QqMCkdca2z+PqlO
 91p0xzy5tZ6fyJM8NCX5vrznlrY8G8e4lOANFwVn3LckFIoSiI1z2ZjAj2ERoAEvf1pO
 MQpFOhCCA6pV+5XClmQW0lkbVvARMrZT53asV+11CcxtkhDQyE5R9Vu4AUxUJMS+zBIt
 2E7zUFA5KObjfWA3rSC8YVuiWUd9yL7BfTKwwlVb+woHqD+Vp4TdCygDBBdnXZTIgUWQ
 zysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zyNStJqfiewBjRrL2JduXj81mYZdeeOY8ue5/WecE7U=;
 b=qCpv42lDly9c7Qfs2QldwY7lVwKct6b7J1WwIVUqJJH2ksR9X1pjUKLqtovAawoNOR
 8MJEYeVaIjiweP+4IJ+wiXm7o+/OEXDTfHBnWLtM5HbEK9+7lKyfA7F8Se6+iCZZvDiK
 fkpPsEpaNPdyqkxHL7VZhHu6AkqteNjtB0yTEimjpT/HUI4430648z0BfqaR+gIfJfLL
 7qh1AJhDwXZMNdAa74s2ppP4ig9I6b9IHPU9C+c3GJFROovJtIQnPAvFYgkcGuHWnJzm
 nGoFghs+wT81BpEjzYdHzj4J1z4tsqU0e8mhVhUB7DCGjP6F1dmc8d2jSDrRFK18iznR
 b8iQ==
X-Gm-Message-State: APjAAAX/exp+CcJ+x5rBUrsuaqEicZCwDA2w9zzzmTeppjk5YVom0UoJ
 b03A8C2xuEpewdREZkC1MWk=
X-Google-Smtp-Source: APXvYqxX+7vZw4VV7W/bXgeAAwyARpiSjD6EAr6fCSmfVk3ata4TZZ9xhldBG8dhfnQaBrcH0jfhSg==
X-Received: by 2002:a17:90a:b301:: with SMTP id
 d1mr6067673pjr.20.1574934804575; 
 Thu, 28 Nov 2019 01:53:24 -0800 (PST)
Received: from earth-mac.local.gmail.com
 (219x123x138x129.ap219.ftth.ucom.ne.jp. [219.123.138.129])
 by smtp.gmail.com with ESMTPSA id z4sm20039666pfn.80.2019.11.28.01.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Nov 2019 01:53:23 -0800 (PST)
Date: Thu, 28 Nov 2019 18:53:18 +0900
Message-ID: <m2r21sqqcx.wl-thehajime@gmail.com>
From: Hajime Tazaki<thehajime@gmail.com>
To: richard@nod.at
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
In-Reply-To: <48783237.99334.1574864917843.JavaMail.zimbra@nod.at>
References: <cover.1573179553.git.thehajime@gmail.com>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
 <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
 <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
 <293078386.98317.1574784295793.JavaMail.zimbra@nod.at>
 <m2wobmq7v8.wl-thehajime@gmail.com>
 <48783237.99334.1574864917843.JavaMail.zimbra@nod.at>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/25.3 Mule/6.0
 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_015326_428645_05256733 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.5 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
 1.4 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
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
Cc: linux-arch@vger.kernel.org, cem@freebsd.org, tavi.purdila@gmail.com,
 linux-um@lists.infradead.org, retrage01@gmail.com, pscollins@google.com,
 linux-kernel-library@freelists.org, johannes@sipsolutions.net,
 sigmaepsilon92@gmail.com, liuyuan@google.com, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


On Wed, 27 Nov 2019 23:28:37 +0900,
Richard Weinberger wrote:
> =

> ----- Urspr=FCngliche Mail -----
> >> Can you please point out a little further why UML's net or block drive=
rs
> >> are not usable for LKL?
> > =

> > I think we can do it (but need to check).
> > =

> > LKL may use UML's drivers, and UML can also use LKL's devices/drivers
> > (as my 36/37 and 37/37 patches do, though the patches has no careful
> > consideration on IRQ handling).
> =

> Of course. So please don't get me wrong, I don't want LKL to become
> UML. I hope that UML can also benefit from LKL.

I understand, let me play with the UML code for a while.

-- Hajime


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
