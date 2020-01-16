Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A3C13D635
	for <lists+linux-um@lfdr.de>; Thu, 16 Jan 2020 09:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzseRwExHFg7zU41Y2eS97xbkg6OBSI5qmBXmGJcwFo=; b=MT69QSPvn1U18+
	6tOB4BhwHKXS38zjt5+ZwsfKcqR5lOlW6jnf+Xfutmte9KIX3I4vplajYrkVGtHxurMHG03vpngkt
	VryD/V1XP6c2GuzpAM6YWDpOsmykM3+0LPkVXPQD8Gflcd9gkMu+KATjmmOu5IDBr0HTDnApVeL8V
	RFW4zduG8Xpx0z7U/I15NDR/GBChhM6TcPB1DQNd0rePa7G0hzwk8A//r/k1HQ6AbmSUyqsc2zd1a
	vZn+I74hOLxADnc4eIThbcNmOnOqnViMCtx8PuALT9T8kMXlhKxe6q5f8EcmHVl10eEK7t76y81f9
	roEIj1nLl50t/WqS8gSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0tr-0007ym-Aj; Thu, 16 Jan 2020 08:53:11 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0tk-0007uS-MS
 for linux-um@lists.infradead.org; Thu, 16 Jan 2020 08:53:10 +0000
Received: by mail-qt1-x842.google.com with SMTP id e12so18280602qto.2
 for <linux-um@lists.infradead.org>; Thu, 16 Jan 2020 00:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lq1lgQepAiLQTChN85kcSpVDrR+IKCYkY9dHTqAQDcM=;
 b=Zi64Kg7KK+B5haudW5HjEa7F3ZDfapczeiCEACOCF6FEfhyd1F04IlvUIvbckZfhqB
 m5sHC5SL4LAcnuxn/vVVOmQbYFMcO4SWSHhUcMEuRzAnOOusbAnVNsgIWB7Y3nVEfQNS
 KIg3Kf+jJxzjnO2LkgXozRl0F6jtbORpL73RvFHzW1BlE9ckNdoKGPncI2reSsC9WUFR
 6xM2TZVBsILLq/bDpXavek7w2D6/94aBUKCp0qA0fPFplpitW+w8PFFlO4R6eCnezkue
 3CEAXw8uufTK7n7vhhlTsl2SLfQJQAGmfYU04sa7vVYg3cwBxenTCklXZTmfkuCPHWGY
 UZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lq1lgQepAiLQTChN85kcSpVDrR+IKCYkY9dHTqAQDcM=;
 b=D2Lu9JLiLeIU69vxjLEw0SSYXwUYC+16IpdcI2B1N1p7AQU7k6188o9HGmA4lwMtGQ
 f3A0SiopvN+bcUPqCrJF00LH7TyU3Mw0uW609U67bK3IQj1Q5jIbtC9amAmUKaC2fqTe
 A66jDJlKUuWb19JKMEU3EjY5MyzUADJCEmOr/wMS/Ess22ZdyHF/qMEwDmiBpAbge5VB
 N49TG0ts40cIxmNRBmCbmoWCsyli2l+nfUixOdLdAM8wJKI0BszhwY+dxcMWaOmugxkh
 cr1afE7giZ6Cul6OP2JiZ5NpwpATtLXRt30JN5PKbu5xl8Ayu+k3uoSPfXIY+KDvRG/x
 Myeg==
X-Gm-Message-State: APjAAAVGoiF68so7cazEBs2RKjvVAhJYEVwza7GhLi2Hd+7Evf6wbF9i
 F+Cw0oEvyiir1LDY8FUlq6Gidowiij7/+80IEWBmLA==
X-Google-Smtp-Source: APXvYqx668LJA8dc9pebV2KDB+FmOaBoMSj6224mh7wamsZGH884hR6PWoaTatkVg9XYy1EbjSRjVtKcg9fuQdTluQM=
X-Received: by 2002:ac8:24c1:: with SMTP id t1mr1305434qtt.257.1579164783430; 
 Thu, 16 Jan 2020 00:53:03 -0800 (PST)
MIME-Version: 1.0
References: <20200115182816.33892-1-trishalfonso@google.com>
In-Reply-To: <20200115182816.33892-1-trishalfonso@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:52:52 +0100
Message-ID: <CACT4Y+b4+5PQvUeeHi=3g0my0WbaRaNEWY3P-MOVJXYSO7U5aA@mail.gmail.com>
Subject: Re: [RFC PATCH] UML: add support for KASAN under x86_64
To: Patricia Alfonso <trishalfonso@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_005304_757790_F2BC6094 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-um@lists.infradead.org, David Gow <davidgow@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> +void kasan_init(void)
> +{
> +       kasan_map_memory((void *)KASAN_SHADOW_START, KASAN_SHADOW_SIZE);
> +
> +       // unpoison the kernel text which is form uml_physmem -> uml_reserved
> +       kasan_unpoison_shadow((void *)uml_physmem, physmem_size);
> +
> +       // unpoison the vmalloc region, which is start_vm -> end_vm
> +       kasan_unpoison_shadow((void *)start_vm, (end_vm - start_vm + 1));
> +
> +       init_task.kasan_depth = 0;
> +       pr_info("KernelAddressSanitizer initialized\n");
> +}

Was this tested with stack instrumentation? Stack instrumentation
changes what shadow is being read/written and when. We don't need to
get it working right now, but if it does not work it would be nice to
restrict the setting and leave some comment traces for future
generations.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
