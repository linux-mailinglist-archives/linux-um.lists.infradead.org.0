Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE9160C9D
	for <lists+linux-um@lfdr.de>; Fri,  5 Jul 2019 22:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBYDVRyejH4nw1rUI1Hn43Z2sJ9QvpZc63XCmqZkIpY=; b=KqXQsrAubZOPFb
	IyYP4+erciSNRmJOLzXe2V85b0mvx3OMQ3ofcMk7o1H0NmjwWda+TtBumgEun1WX8ZVTn41X6IJVA
	vnWfmeGjLGUMfMTEBKML/Hm6JLzWNLWHhyBrUJGVY138gKUwZBvhmsnqyD7ibFeDKis2AOYg97z2k
	LAWzRXHHe2jqgm8shH2jJ2IXIVKnxZF7HYaYb35UIoZxbUiqGUVq/jQlOG/4q3xU1dwck9yhoMfwr
	wgGKm/chLvXkp8JEeQVGsMdZQT8hITRFBLJcdCzFOJCucqpMwkSeolpmmtsb4i+lMyrJ9OwMjfZvM
	gecjY1Sphxb/erSac/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjV5e-0001NM-Py; Fri, 05 Jul 2019 20:45:54 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjV5R-0001AN-C5
 for linux-um@lists.infradead.org; Fri, 05 Jul 2019 20:45:42 +0000
Received: by mail-pg1-f194.google.com with SMTP id t132so4749564pgb.9
 for <linux-um@lists.infradead.org>; Fri, 05 Jul 2019 13:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NINMgNCtdp9VxxGck6fqsoIqX8vCQf36P/6C5pYBqDM=;
 b=SeHOUVW4qvDig8sLrNP2MczpY2ijiHHHNP8R3O/ZB/YCgLEXldk7Vg55IvUXcsthFm
 Utee14Bfyc1nb5+MC2COSoaIt7xFaQv2skOYTph4E9gloIvHmGKLBLJOowj2D4znlBYV
 V1OgZJysd/41+M1ZXlHxbf5i6FA/JBTqykeW8KRZ1Mtgahw1twfK/VdcQA3IlgKuhVnu
 amgjw0bQqLbr2mcNmv4S8ueLK5LoSDu+o8IGsi3uwYHnCJVRrYAHztS5GcdsY9a5cZl3
 A+hDhQWD0LpsrpNVzV+/Yr9//KfU3o4nr+hT/FVz9k32Ggd+ujVB1rYbiNsjLbJhZXcs
 HAcQ==
X-Gm-Message-State: APjAAAV3Ecz6H1stFIqTz14lKoPzwdpqxr+f+F5d0K48V8XspC+Crbo7
 w4+4jHnRxNjkLWKkuS0Z+lI=
X-Google-Smtp-Source: APXvYqzORz85r9dXJ+0VShptntCI2Ba5VbMOY6v1/mI3RdkuGvkVnROUEZV4rccMgxpa1+keGNumHQ==
X-Received: by 2002:a17:90a:d58c:: with SMTP id v12mr89451pju.7.1562359539502; 
 Fri, 05 Jul 2019 13:45:39 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id b17sm14479029pgj.73.2019.07.05.13.45.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:45:38 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9D53F40190; Fri,  5 Jul 2019 20:45:37 +0000 (UTC)
Date: Fri, 5 Jul 2019 20:45:37 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v6 02/18] kunit: test: add test resource management API
Message-ID: <20190705204537.GC19023@42.do-not-panic.com>
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-3-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704003615.204860-3-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_134541_463285_BC094F14 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:35:59PM -0700, Brendan Higgins wrote:
> diff --git a/kunit/test.c b/kunit/test.c
> index c030ba5a43e40..a70fbe449e922 100644
> --- a/kunit/test.c
> +++ b/kunit/test.c
> @@ -122,7 +122,8 @@ static void kunit_print_test_case_ok_not_ok(struct kunit_case *test_case,
>  
>  void kunit_init_test(struct kunit *test, const char *name)
>  {
> -	spin_lock_init(&test->lock);

Once you re-spin, this above line should be removed.

> +	mutex_init(&test->lock);
> +	INIT_LIST_HEAD(&test->resources);
>  	test->name = name;
>  	test->success = true;
>  }

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
