Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FDE188D90
	for <lists+linux-um@lfdr.de>; Tue, 17 Mar 2020 20:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F15RmplVS2McsQk7bMAx58b8Ng6Z4Y2ERgZogtATcII=; b=sQeDNGZvunxmB6
	UPpy2OEN/Mg05uxerR9bSpNmsZzKXWthVceihXEjjbmvuwK1vulGAQr4kszq8xBuVmmM/hOlUNWII
	ms6F7oyu1TTtYuET9pF/Wx+/K/+QHAejyB4F5V2c7Dx849bPKPud6EQ+95LrelizRbnzT1LaYTv8N
	gjkjBDyLPWth6vZfddMKoZALVy+TAopdSiwq1T9/Q+k0CpSPaEP3/22jAf1Gk61407EpN8RWHrwjf
	eYNEQOlDoPeEyKZ3n9Frv0ey12q6NgjDnHzaXju1Pxke2Nc9xUKs4bn2sqef3MVPAza29nUaMQyqm
	hvgXT5B3v2wCkiE4b/1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHRw-0002ip-MA; Tue, 17 Mar 2020 19:00:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHRq-0002Yh-At
 for linux-um@lists.infradead.org; Tue, 17 Mar 2020 19:00:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id h8so12226946pgs.9
 for <linux-um@lists.infradead.org>; Tue, 17 Mar 2020 12:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jIJJdVcrbCM1Uy5C18NJ7lLDk8OKxklWqi5JifEremM=;
 b=t1yRuystaceBAj2vdu/nWWcgFCniTGzwYUiNO3l4lHaEkq7FTc7csqHVrUPsB9a/mO
 Y5RgaJz4/YljCTcjyz2xC8Y60p/WqlGd4aQfgQJRSsynwMjLks2O3zfOXqFb4HUXXSjZ
 tIk5cL5WVibK8V/yTbaDXTmdiM8QHpBhYWXAgEH057XQImkEJuBx9peYb8lgPO1eRrD/
 tTwKugBzuwFGOD8sd8RNGDW95uQyDj6OBMN7tgGhYx0EDTh8qQXz1nerH9AKmRPA2ANE
 +vxhQaQmFIMCKeymNUiAkvFmEYHwrcJHTFcMb7BNZ60pJGh02aMTTAApJHvo6fyZcU3y
 D1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jIJJdVcrbCM1Uy5C18NJ7lLDk8OKxklWqi5JifEremM=;
 b=IsUWYMiFg8IVp6vXnHKWpHn3hf9k20RcCBLZkjXPS7afQj9SLb1touvVmHN1lx8+zL
 XgI59UCxzc1W4MV7e19jDvfXWRHfcYMrPoowWgiIJEJ7aU8uaClVybw35qQq7kAUhjj+
 vkjM3tzRL/9eOWRyO1qIKikp3f4enRclxeZKBufix1HPiYfDc9fkWmKxmmeqyRkfCGI5
 DUfc/oNcdNs7G2fWlWMLf4CF48S8qoW0d+/e2osV2j4NT7Zqn/Nz4qJdeXH5SlpcRoJZ
 4P2fXTridYvL6RSrSbLMhf30gPaqZ8NuRzkEYPPGFu6geEMY1BbwTBgPzY6RALT7qCDF
 czRQ==
X-Gm-Message-State: ANhLgQ10NQxgQ+ldLrtulcfls3/n/DNrk+otsT6G5EQHwPrIsl3eXAbn
 r6LHU30nC8P3PXY9iA5s8ep4hZRo/V0IpcBEsuyjpQ==
X-Google-Smtp-Source: ADFU+vsTvGgKUFwFLLQGeCQr0N0/ivnCHwSCvZxKOhpjrFCzdjXOv6yQY6SsHgDcAB73dGzQo/Y2fxB5PC9A5Xylw9A=
X-Received: by 2002:a62:8343:: with SMTP id h64mr231036pfe.166.1584471614689; 
 Tue, 17 Mar 2020 12:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
In-Reply-To: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 17 Mar 2020 12:00:03 -0700
Message-ID: <CAFd5g46AZC7EPgxfTRdws_4u6V=AxCGASG7jxCJXuXU=hJUxog@mail.gmail.com>
Subject: Re: [PATCH] arch/um: falloc.h needs to be directly included for older
 libc
To: Alan Maguire <alan.maguire@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_120018_657865_F3E2B994 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes.berg@intel.com>,
 erelx.geron@intel.com, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Richard Weinberger <richard@nod.at>, alex.dewar@gmx.co.uk,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:38 AM Alan Maguire <alan.maguire@oracle.com> wrote:
>
> When building UML with glibc 2.17 installed, compilation
> of arch/um/os-Linux/file.c fails due to failure to find
> FALLOC_FL_PUNCH_HOLE and FALLOC_FL_KEEP_SIZE definitions.
>
> It appears that /usr/include/bits/fcntl-linux.h (indirectly
> included by /usr/include/fcntl.h) does not include falloc.h
> with an older glibc, whereas a more up-to-date version
> does.
>
> Adding the direct include to file.c resolves the issue
> and does not cause problems for more recent glibc.
>
> Fixes: 50109b5a03b4 ("um: Add support for DISCARD in the UBD Driver")
> Cc: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
