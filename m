Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233291FA2E2
	for <lists+linux-um@lfdr.de>; Mon, 15 Jun 2020 23:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvYmJHSOnwOzgd+g9J9rAEjmDT18gtjsrUHCHMQtQnk=; b=t4jjtnLMLxT6hQ
	TYKeqSC7Q7Lkt177s12fOz74KmTyEA7QyOvNB6cEpdkCzplXZNM5r/I79eKoDw+/v0EVzp1BXSyfR
	jYOyjY4FI7RW6lXkjqYPfMx+cUBlQlX35Ns1lzzNlLAY9qXoi9zHqysCRtdfVau5VIyEFcdYR9PVg
	5v6Zu2L8p+INI47MvmpRUiKMJTtDAwmnFXJDepDT7sJsEm71vMoItnUgJej2raPfQS51omLf67qqH
	Jdtrb/bFIrVbKpiMEhfszM/LKlKmNdxg3m3txBQZseJKHtTsJQNkywIOpy9NnhrGTCDClg0ytUxFe
	Vo6YtCQ7ntMQzhaLHgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkwke-0007Wl-Nh; Mon, 15 Jun 2020 21:34:44 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkwkZ-0007VV-Oy
 for linux-um@lists.infradead.org; Mon, 15 Jun 2020 21:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592256876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ItwxuioZVdA5XdCXR1QbAewm4+8qdb0KbH1lb+9ehrA=;
 b=gVPACN6xO1SeIGsjRKFWvtdrnZBydlA/xLaXlBTA9ukZGl8rrSHTnjN2uogdd2Fc4Dt43t
 N034oGy0lR/F8iU1msOQSncDNnrtFpLzDG+Yj7bkEUSC/23fQh5XZcOAkeqq2c9/GUp5z8
 vlzphSUVDu2xnhW42LAOptOJw/OIneY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-R6-D1tJdOrCeM8WyLWmS7A-1; Mon, 15 Jun 2020 17:34:34 -0400
X-MC-Unique: R6-D1tJdOrCeM8WyLWmS7A-1
Received: by mail-qk1-f197.google.com with SMTP id d187so15329098qke.4
 for <linux-um@lists.infradead.org>; Mon, 15 Jun 2020 14:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ItwxuioZVdA5XdCXR1QbAewm4+8qdb0KbH1lb+9ehrA=;
 b=MyZnUpvwonykXOxa4bzHk3BXC2GwKYo0PRZlR97oUPpTgxQDCOZdDEmiZ8f4IY4kmK
 trRPnbWx7q8SgiFEBUg/NssoAJ0dAu76Rl9Sq13RLMLufTLsN37qh5FNLBsImc5DMUfp
 M/rHixbeuLmfSR6ChATL3XhSSertn2o16OXFgJwMi3s+YHtDH5PC4d/awCpfNj0iq39F
 P7QKTj2qykrur/seoqT5eKjWg9oEGaYBGD7cHSCBbCh+7AffsE8oOXSn5/IyEl5I/wPZ
 R9KHb5E+IqkiTW4nM3LN83bYGEHtBx0hF40CqQDUEy4IOkVdbSNKIRZLpDQUtQ7hxsuQ
 5K4A==
X-Gm-Message-State: AOAM532fKFGwsKGC8ialNvZnyLqjLUrb8c/QRZd66Prw6qptVqqFqS8d
 N5bGhSaokiXppPMqi+tXQpsCOH88NqrlrqSI+yQkLrletbIGxVSAderny8Q/B+/2Nc8wcTW5Hre
 UiSM1mEotmPDNPSf4VTwWp4qt
X-Received: by 2002:a0c:ed31:: with SMTP id u17mr25540575qvq.117.1592256874108; 
 Mon, 15 Jun 2020 14:34:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz0iHGiHde51cucRTUPE7NzfM/1jQRbNlFV4ChXmFExBXup/Ay4TPRKGywEeToUwHIWcL2Psg==
X-Received: by 2002:a0c:ed31:: with SMTP id u17mr25540552qvq.117.1592256873805; 
 Mon, 15 Jun 2020 14:34:33 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id f30sm12961493qtb.9.2020.06.15.14.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 14:34:33 -0700 (PDT)
Date: Mon, 15 Jun 2020 17:34:31 -0400
From: Peter Xu <peterx@redhat.com>
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Subject: Re: Possible duplicate page fault accounting on some archs after
 commit 4064b9827063
Message-ID: <20200615213431.GC111927@xz-x1>
References: <20200610174811.44b94525@thinkpad> <20200610165023.GA67179@xz-x1>
MIME-Version: 1.0
In-Reply-To: <20200610165023.GA67179@xz-x1>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_143440_495605_870D5AF5 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-xtensa@linux-xtensa.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, Nick Hu <nickhu@andestech.com>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 12:50:23PM -0400, Peter Xu wrote:
> On Wed, Jun 10, 2020 at 05:48:11PM +0200, Gerald Schaefer wrote:
> > Hi,
> 
> Hi, Gerald,
> 
> > 
> > Some architectures have their page fault accounting code inside the fault
> > retry loop, and rely on only going through that code once. Before commit
> > 4064b9827063 ("mm: allow VM_FAULT_RETRY for multiple times"), that was
> > ensured by testing for and clearing FAULT_FLAG_ALLOW_RETRY.
> > 
> > That commit had to remove the clearing of FAULT_FLAG_ALLOW_RETRY for all
> > architectures, and introduced a subtle change to page fault accounting
> > logic in the affected archs. It is now possible to go through the retry
> > loop multiple times, and the affected archs would then account multiple
> > page faults instead of just one.
> > 
> > This was found by coincidence in s390 code, and a quick check showed that
> > there are quite a lot of other architectures that seem to be affected in a
> > similar way. I'm preparing a fix for s390, by moving the accounting behind
> > the retry loop, similar to x86. It is not completely straight-forward, so
> > I leave the fix for other archs to the respective maintainers.
> 
> Sorry for not noticing this before.  The accounting part should definitely be
> put at least into a check against fault_flag_allow_retry_first() to mimic what
> was done before.  And I agree it would be even better to put it after the retry
> logic, so if any of the page faults gets a major fault, it'll be accounted as a
> major fault which makes more sense to me, just like what x86 is doing now with:
> 
> 	major |= fault & VM_FAULT_MAJOR;
> 
> I'm not sure what's the preference of the arch maintainers, just let me know if
> it's preferred to use a single series to address this issue for all affected
> archs (or the archs besides s390), then I'll do.

To make sure this won't fall through the cracks... I'll give it a shot with a
single series to address this issue for all archs.  Although it might not be
easy to do accounting directly in handle_mm_fault(), it might be still a chance
to introduce a helper so the accounting can be done in general code.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
