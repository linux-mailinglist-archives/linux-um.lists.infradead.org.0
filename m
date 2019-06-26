Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B539155E3D
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 04:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWz+ILiI8lX8Z200K+jKM4AnVBkwDNDds3C8ayaaZDc=; b=HLCo81rhmNjaOs
	9p1K3ikNVNrD1G8mi/CE0hbzivxmbKdxfjCBG5Rlja9YiuwvOZK9hz4H2o1vNmZk8+qMrzKGJr6c2
	oZhOmiUxnxx1PKv3Hpx+K2M1ohWmThoKAp2icXl+YhNPSHRmEBmfSHONWL/exsXhn//BLEA9YYerR
	hkuvA9RiMddPI23cptq5oPWDAIaw06V3l9YDPqRnnn6T2QFOH7okHwA1IwmwyzztCBYDCp455PtPA
	MXY0i7z2yr8oLOwQcRq9onXos+D+/d8rybT7DwgcegYy5eEJgNSgksFcjy75F5hjEONIusI/VWNVN
	/bky5/bLXWeVitZqIPaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxXV-0006Uq-WC; Wed, 26 Jun 2019 02:20:02 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxXS-0006Rn-FB
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 02:19:59 +0000
Received: by mail-pg1-f193.google.com with SMTP id n2so375969pgp.11
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 19:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ImbOmbqru+Yum9wVwWkpBNaUFJnZhA+Sv2EnuogBtJ8=;
 b=rz+ReI+O0Mon/1TwrjZI3kPsp9+dS8dKv49w7w8nNSEslXQ5KeuvAlaq4nWk3yC+Cc
 2HmpctPpT/lLdeiAK7xK3wUWRvlNZiLAGTIfUQC8XqQapoGKooPTwDq9iBlKn7SRfMM4
 WvLoEMVKRrvtQKkbF5aE3/O+nJ4nbxYTukXnLFjxrSc3M9hrWwd5MAw7lh/42pwvZByu
 Xuj+jK4+66af3MoG/0LBg1gQO7fcJl/rd41jSnYFXEvkaOnduZOz9ZyFqoAAPyJWnW9U
 lO0tnDRVpzltjqUxFYBw2FikdW53x+arQknqsSobqJseFFSO/jZQQflT4MEvBmEc6hQw
 A3qg==
X-Gm-Message-State: APjAAAVL72QfLVnNkFxuX4hiUfG/07XaZWljm5at3xv4OvP+1dEyt0kZ
 BfQ/9Bzk93C+gr5g7SlFQQs=
X-Google-Smtp-Source: APXvYqz/ak3oqhDInPfCtSC5xTrl5WLmu4WvNmi0OnSYEvLdryLAAJJtmF40zvlfJnfwrjGTHOLxzA==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr1267695pje.125.1561515594542; 
 Tue, 25 Jun 2019 19:19:54 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id q1sm23369013pfn.178.2019.06.25.19.19.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 19:19:53 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id BB23740336; Wed, 26 Jun 2019 02:19:52 +0000 (UTC)
Date: Wed, 26 Jun 2019 02:19:52 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
Message-ID: <20190626021952.GV19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-19-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082613.109131-19-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_191958_511136_A3DBECA6 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jun 17, 2019 at 01:26:13AM -0700, Brendan Higgins wrote:
> Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Acked-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
