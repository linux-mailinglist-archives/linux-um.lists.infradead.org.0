Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB6B55AC5
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 00:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMTtOwr0Rob1h5f2sFz2TwLpU0o517fQQD0KFL4KEVc=; b=mCRze+Jxa1a13L
	85Yp7qpT5zkb8us8XtFh4h66qCns1/q/aeBM6etaGnsOipkn1J8vXi0KBifCWjoXQUGc+8K6mfRgj
	ZNLGYwW1kaDr9nU6XuLKRaaJr0TzKABGJcOkPAGPlPQ2hV1gzpJDJijvL58zkYiqp6lSEEfIyIpHD
	7ln2cxxrEKg+xuuI7Q65O+VDWkye+zjy6P6H0abD/q3xM1sd+43CPlNJurtHicH7gc3v6/zzMbrvZ
	vGr2XegJQF+ISFLdLheMJvE0yDauj9X67NOOOEdIs3G48sJIIVMyxEuqDSTmBYIBhhZEykBs9Ft2X
	N7nKJtJYf83bas1VGTPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfth3-0000J5-0y; Tue, 25 Jun 2019 22:13:37 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftgu-00007k-3M
 for linux-um@lists.infradead.org; Tue, 25 Jun 2019 22:13:29 +0000
Received: by mail-pg1-f193.google.com with SMTP id w10so119048pgj.7
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 15:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8gzPjoJjuhl8UL7VUOkU3jqXACXyJKi+qh78CzG1deI=;
 b=o1ChyBlAJreqp84Uh0uzZ4YTHfaFSRL10xL2xiafjSzvqC9EzUpPby1koQnf854t5/
 XWfNVrzl+yJTdnZnHPNBCqqZlsfuFkcv2PeetT46X44F3pWxkJ1xDR05Y0pdvBWtY/50
 7+DM+H/sYGJhw0SfrNDxbGKnQV6cIA4itQtBq3OnKXAUVukySi7/i/G01mX9Y+RLgqvE
 NroOAZFtLl4p0gYUX7OGEPErHk+sAdqSgNVJwF5kR0kOCNuNCPpfiHByWcjACOjC3hs+
 vVGoEMHMJeeQkgyBYxepMkqSvXr/eyfq3jjJhltuS1dlY8XN7ThDhQ+EGypsqqCfn/Hz
 GbgQ==
X-Gm-Message-State: APjAAAUoPOLOT+XfNbOH/7sRnkWjAcU2wtDicaLChjrAfp/h9f9zdYP4
 S91uDngLVWLoNmvg4hxj50A=
X-Google-Smtp-Source: APXvYqxWuXRncraTED2jeacoTPyN1fvtJGk3Zc52FbqH3XACtitgQolZjqrTP/UYKEopxq0KXI3bTw==
X-Received: by 2002:a63:480e:: with SMTP id v14mr1871131pga.182.1561500800857; 
 Tue, 25 Jun 2019 15:13:20 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id x3sm45355pja.7.2019.06.25.15.13.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 15:13:19 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id D102E401EB; Tue, 25 Jun 2019 22:13:18 +0000 (UTC)
Date: Tue, 25 Jun 2019 22:13:18 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 06/18] kbuild: enable building KUnit
Message-ID: <20190625221318.GO19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-7-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082613.109131-7-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151328_423692_867C3838 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Mon, Jun 17, 2019 at 01:26:01AM -0700, Brendan Higgins wrote:
> diff --git a/Kconfig b/Kconfig
> index 48a80beab6853..10428501edb78 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -30,3 +30,5 @@ source "crypto/Kconfig"
>  source "lib/Kconfig"
>  
>  source "lib/Kconfig.debug"
> +
> +source "kunit/Kconfig"

This patch would break compilation as kunit/Kconfig is not introduced. This
would would also break bisectability on this commit. This change should
either be folded in to the next patch, or just be a separate patch after
the next one.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
